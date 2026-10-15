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

$msg -join "`n"
exit 0
