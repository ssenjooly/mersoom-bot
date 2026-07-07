$ErrorActionPreference = "Stop"

$repo = "https://github.com/ssenjooly/mersoom-bot.git"

git remote remove origin 2>$null
git remote add origin $repo
git branch -M main
git push -u origin main

Write-Host ""
Write-Host "Uploaded to $repo"
