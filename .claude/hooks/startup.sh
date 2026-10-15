#!/bin/sh
# Startup checks for every Claudio-Assistant chat (macOS and Linux).
# Twin of startup.ps1 (Windows): if you change one, change the other.
# Whatever this script prints reaches Claude as context for the chat.
# POSIX only (sh, awk, grep, find, sed): no bash, no GNU/BSD-specific date.

root=$(cd "$(dirname "$0")/../.." 2>/dev/null && pwd) || exit 0
today=$(date +%Y-%m-%d)
echo "Today is $today."

# Days since year 0 for a YYYY-MM-DD date (awk arithmetic, identical on Mac and Linux).
days() {
    echo "$1" | awk -F- '{ y=$1+0; m=$2+0; d=$3+0; if (m<3) { y--; m+=12 }
        print 365*y + int(y/4) - int(y/100) + int(y/400) + int((153*(m-3)+2)/5) + d }'
}

# 1. Setup done?
not_configured=0
if grep -q 'NOT_CONFIGURED' "$root/memory/office/owner.md" 2>/dev/null; then
    not_configured=1
    echo "FIRST START: the assistant is not configured yet. Greet the user, introduce yourself and start the 'setup' skill."
fi

# 2. New files in the Learn-From-Here inbox?
n=$(find "$root/Learn-From-Here" -type f ! -name 'README.txt' ! -name '.keep' ! -name '.DS_Store' ! -name '._*' ! -name 'desktop.ini' ! -name 'Thumbs.db' 2>/dev/null | wc -l | tr -d ' ')
if [ "${n:-0}" -gt 0 ]; then
    if [ $not_configured -eq 1 ]; then after=", after the setup."; else after="."; fi
    echo "New files in Learn-From-Here to study: $n. Propose to look at them (skill 'learn-from-here')$after"
fi

# 2-bis. Basic toolkit installed and still there?
tools="$root/memory/office/tools.md"
if grep -q 'TO_INSTALL' "$tools" 2>/dev/null; then
    if [ $not_configured -eq 1 ]; then when=" during the setup."; else when="."; fi
    echo "The basic toolkit (programs for Word, Excel, PDF) is not installed yet: install it with the 'get-tools' skill$when"
else
    missing=""
    command -v python3 >/dev/null 2>&1 || missing="$missing Python"
    command -v node >/dev/null 2>&1 || missing="$missing Node.js"
    command -v pandoc >/dev/null 2>&1 || missing="$missing Pandoc"
    if ! command -v soffice >/dev/null 2>&1 && ! command -v libreoffice >/dev/null 2>&1 \
       && [ ! -x /Applications/LibreOffice.app/Contents/MacOS/soffice ]; then
        missing="$missing LibreOffice"
    fi
    if [ -n "$missing" ]; then
        echo "Basic tools not found:$missing. If needed, reinstall them yourself with 'get-tools' (check memory/office/tools.md first)."
    fi
fi

# 3. Memory tidy-up due?
mnt="$root/memory/_maintenance.md"
if [ -f "$mnt" ] && [ $not_configured -eq 0 ]; then
    interval=$(sed -n 's/^interval_days:[[:space:]]*\([0-9][0-9]*\).*/\1/p' "$mnt" | head -n 1)
    [ -n "$interval" ] || interval=30
    last=$(sed -n 's/^last_tidy:[[:space:]]*\([0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\).*/\1/p' "$mnt" | head -n 1)
    due=1
    if [ -n "$last" ]; then
        diff=$(( $(days "$today") - $(days "$last") ))
        [ "$diff" -lt "$interval" ] && due=0
    fi
    if [ $due -eq 1 ]; then
        echo "The memory tidy-up is due (every $interval days). When the user is not in a hurry, propose the 'tidy-memory' skill."
    fi
fi

exit 0
