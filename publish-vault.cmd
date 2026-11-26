@echo off
REM ============================================================
REM  Publish the Obsidian vault to the Quartz website.
REM  1. Copies the vault into quartz\content (minus private stuff)
REM  2. Commits and pushes to GitHub; GitHub Pages rebuilds the site
REM  Double-click to publish now, or let Task Scheduler run it ("auto").
REM  Never force-pushes: if anything fails, it stops and says why.
REM ============================================================
setlocal
set "NODE24=C:\Users\wench\Downloads\node-v24.22.3-win-x64\node-v24.22.3-win-x64"
set "VAULT=C:\Users\wench\OneDrive\Documents\Obsidian Vault"
set "QUARTZ=%~dp0"
set "PATH=%NODE24%;%PATH%"
cd /d "%QUARTZ%"

REM ---- What NOT to publish (edit these lists as you like) ----
REM Folders: Obsidian settings, trash, course PDFs (attachments), Other Resources, OneDrive temp folders
set XD=.obsidian .trash .git attachments "Other Resources" .tmp.drivedownload .tmp.driveupload
REM Files: personal to-do list
set XF=To-Do.md

echo Copying vault into content\ ...
robocopy "%VAULT%" "%QUARTZ%content" /MIR /XD %XD% /XF %XF% .gitkeep /R:1 /W:1 /NFL /NDL /NJH /NP
if %ERRORLEVEL% GEQ 8 (
  echo Copy failed. Nothing was published.
  goto :end
)

REM Homepage: use the vault's own index.md if it has one, otherwise site-index.md
if not exist "%VAULT%\index.md" copy /y "%QUARTZ%site-index.md" "%QUARTZ%content\index.md" >nul

echo Publishing to GitHub ...
git add -A
git diff --cached --quiet && (echo No changes since the last publish. & goto :end)
git commit -q -m "Vault update %DATE% %TIME%" || (echo Commit failed - see the message above. Nothing was pushed. & goto :end)
git pull --rebase -q origin v5 || (echo Could not get the latest version from GitHub - see above. Nothing was pushed. & goto :end)
git push origin v5 || (echo Push failed - see the message above. & goto :end)
echo Done. The site updates in about a minute: https://wenchengnie.github.io/quartz

:end
REM Keep the window open when double-clicked (Task Scheduler passes "auto")
if /i not "%~1"=="auto" pause
endlocal
