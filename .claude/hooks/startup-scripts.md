# Startup scripts (templates)

The skill `setup` (step 0) creates the real files `.claude/hooks/startup.ps1` (Windows) and
`.claude/hooks/startup.sh` (macOS, Linux) from the two blocks below, on the user's computer, the
first time Claudio starts. The plugin itself ships only this text file. If you change one script,
change the other: they must stay aligned.

## startup.sh (macOS and Linux, run with `sh`)

```sh
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

# 4. Weekly update check due? (read-only check of the GitHub repository, done by the skill)
if [ -f "$mnt" ] && [ $not_configured -eq 0 ]; then
    lastu=$(sed -n 's/^last_update_check:[[:space:]]*\([0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\).*/\1/p' "$mnt" | head -n 1)
    dueu=1
    if [ -n "$lastu" ]; then
        diff=$(( $(days "$today") - $(days "$lastu") ))
        [ "$diff" -lt 7 ] && dueu=0
    fi
    if [ $dueu -eq 1 ]; then
        v=$(sed -n '1p' "$root/VERSION" 2>/dev/null | tr -d ' \r')
        echo "The weekly update check is due (installed version: ${v:-unknown}). When the user is not in a hurry, run the 'check-updates' skill (read-only) and tell them in plain words what is new."
    fi
fi

# 5. Backup older than 7 days?
if [ -f "$mnt" ] && [ $not_configured -eq 0 ]; then
    lastb=$(sed -n 's/^last_backup:[[:space:]]*\([0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\).*/\1/p' "$mnt" | head -n 1)
    dueb=1
    if [ -n "$lastb" ]; then
        diff=$(( $(days "$today") - $(days "$lastb") ))
        [ "$diff" -lt 7 ] && dueb=0
    fi
    if [ $dueb -eq 1 ]; then
        echo "The last backup copy is older than 7 days (or was never made). When the user is not in a hurry, propose the 'backup' skill."
    fi
fi

# 6. Deadlines within 7 days? (rows of memory/deadlines.md: | YYYY-MM-DD | what | job | open |)
dl="$root/memory/deadlines.md"
if [ -f "$dl" ] && [ $not_configured -eq 0 ]; then
    t=$(days "$today")
    soon=$(grep -E '^\| *[0-9]{4}-[0-9]{2}-[0-9]{2} *\|' "$dl" | grep -v -i -E '\| *done *\| *$' | while IFS= read -r line; do
        d=$(echo "$line" | sed -n 's/^| *\([0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\).*/\1/p')
        [ -n "$d" ] || continue
        left=$(( $(days "$d") - t ))
        if [ "$left" -le 7 ]; then
            echo "  - $line (in $left days)"
        fi
    done)
    if [ -n "$soon" ]; then
        echo "Deadlines within 7 days (or overdue), from memory/deadlines.md. Mention them to the user at the start (skill 'deadlines'):"
        echo "$soon"
    fi
fi

exit 0
```

## startup.ps1 (Windows, PowerShell 5.1 or 7, ASCII, CRLF line endings)

```powershell
# Startup checks for every Claudio-Assistant chat (Windows).
# Twin of startup.sh (macOS/Linux): if you change one, change the other.
# Whatever this script prints reaches Claude as context for the chat.
# ASCII only, CRLF line endings: the Windows console can mangle other characters.

$ErrorActionPreference = 'SilentlyContinue'
$root = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$msg = @()
$today = Get-Date
$msg += "Today is $($today.ToString('yyyy-MM-dd'))."

# 1. Setup done?
$owner = Join-Path $root 'memory\office\owner.md'
$notConfigured = (Test-Path $owner) -and (Select-String -Path $owner -Pattern 'NOT_CONFIGURED' -Quiet -CaseSensitive)
if ($notConfigured) {
    $msg += "FIRST START: the assistant is not configured yet. Greet the user, introduce yourself and start the 'setup' skill."
}

# 2. New files in the Learn-From-Here inbox?
$inbox = Join-Path $root 'Learn-From-Here'
$new = @(Get-ChildItem -Path $inbox -Recurse -File -Force | Where-Object { ($_.Name -notin @('README.txt', '.keep', '.DS_Store', 'desktop.ini', 'Thumbs.db')) -and -not $_.Name.StartsWith('._') })
if ($new.Count -gt 0) {
    $msg += "New files in Learn-From-Here to study: $($new.Count). Propose to look at them (skill 'learn-from-here')" + $(if ($notConfigured) { ', after the setup.' } else { '.' })
}

# 2-bis. Basic toolkit installed and still there?
$tools = Join-Path $root 'memory\office\tools.md'
if ((Test-Path $tools) -and (Select-String -Path $tools -Pattern 'TO_INSTALL' -Quiet -CaseSensitive)) {
    $msg += "The basic toolkit (programs for Word, Excel, PDF) is not installed yet: install it with the 'get-tools' skill" + $(if ($notConfigured) { ' during the setup.' } else { '.' })
} else {
    $missing = @()
    if (-not (Get-Command py -ErrorAction SilentlyContinue) -and -not (Get-Command python -ErrorAction SilentlyContinue)) { $missing += 'Python' }
    if (-not (Get-Command node -ErrorAction SilentlyContinue)) { $missing += 'Node.js' }
    if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) { $missing += 'Pandoc' }
    $soffice = (Get-Command soffice -ErrorAction SilentlyContinue) -or (Test-Path 'C:\Program Files\LibreOffice\program\soffice.exe')
    if (-not $soffice) { $missing += 'LibreOffice' }
    if ($missing.Count -gt 0) {
        $msg += "Basic tools not found: $($missing -join ', '). If needed, reinstall them yourself with 'get-tools' (check memory/office/tools.md first)."
    }
}

# 3. Memory tidy-up due?
$mnt = Join-Path $root 'memory\_maintenance.md'
if ((Test-Path $mnt) -and -not $notConfigured) {
    $line = Select-String -Path $mnt -Pattern '^last_tidy:\s*(\S+)' -CaseSensitive | Select-Object -First 1
    $interval = 30
    $int = Select-String -Path $mnt -Pattern '^interval_days:\s*(\d+)' -CaseSensitive | Select-Object -First 1
    if ($int) { $interval = [int]$int.Matches[0].Groups[1].Value }
    $due = $true
    if ($line) {
        $d = [datetime]::MinValue
        if ([datetime]::TryParseExact($line.Matches[0].Groups[1].Value, 'yyyy-MM-dd', $null, 'None', [ref]$d)) {
            $due = (($today - $d).TotalDays -ge $interval)
        }
    }
    if ($due) {
        $msg += "The memory tidy-up is due (every $interval days). When the user is not in a hurry, propose the 'tidy-memory' skill."
    }
}

# 4. Weekly update check due? (read-only check of the GitHub repository, done by the skill)
if ((Test-Path $mnt) -and -not $notConfigured) {
    $lu = Select-String -Path $mnt -Pattern '^last_update_check:\s*(\S+)' -CaseSensitive | Select-Object -First 1
    $dueU = $true
    if ($lu) {
        $d = [datetime]::MinValue
        if ([datetime]::TryParseExact($lu.Matches[0].Groups[1].Value, 'yyyy-MM-dd', $null, 'None', [ref]$d)) {
            $dueU = (($today - $d).TotalDays -ge 7)
        }
    }
    if ($dueU) {
        $vfile = Join-Path $root 'VERSION'
        $v = 'unknown'
        if (Test-Path $vfile) { $v = (Get-Content $vfile -First 1).Trim() }
        $msg += "The weekly update check is due (installed version: $v). When the user is not in a hurry, run the 'check-updates' skill (read-only) and tell them in plain words what is new."
    }
}

# 5. Backup older than 7 days?
if ((Test-Path $mnt) -and -not $notConfigured) {
    $lb = Select-String -Path $mnt -Pattern '^last_backup:\s*(\S+)' -CaseSensitive | Select-Object -First 1
    $dueB = $true
    if ($lb) {
        $d = [datetime]::MinValue
        if ([datetime]::TryParseExact($lb.Matches[0].Groups[1].Value, 'yyyy-MM-dd', $null, 'None', [ref]$d)) {
            $dueB = (($today - $d).TotalDays -ge 7)
        }
    }
    if ($dueB) {
        $msg += "The last backup copy is older than 7 days (or was never made). When the user is not in a hurry, propose the 'backup' skill."
    }
}

# 6. Deadlines within 7 days? (rows of memory/deadlines.md: | YYYY-MM-DD | what | job | open |)
$dl = Join-Path $root 'memory\deadlines.md'
if ((Test-Path $dl) -and -not $notConfigured) {
    $soon = @()
    foreach ($row in (Select-String -Path $dl -Pattern '^\|\s*(\d{4}-\d{2}-\d{2})\s*\|')) {
        if ($row.Line -match '\|\s*done\s*\|\s*$') { continue }
        $d = [datetime]::MinValue
        if ([datetime]::TryParseExact($row.Matches[0].Groups[1].Value, 'yyyy-MM-dd', $null, 'None', [ref]$d)) {
            $left = [int][math]::Floor(($d.Date - $today.Date).TotalDays)
            if ($left -le 7) { $soon += "  - $($row.Line) (in $left days)" }
        }
    }
    if ($soon.Count -gt 0) {
        $msg += "Deadlines within 7 days (or overdue), from memory/deadlines.md. Mention them to the user at the start (skill 'deadlines'):"
        $msg += $soon
    }
}

$msg -join "`n"
exit 0
```
