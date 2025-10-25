#!/usr/bin/env pwsh
# TakeCare Website Deployment Script
# Run this to check deployment status

Write-Host "================================" -ForegroundColor Cyan
Write-Host "  TakeCare Deployment Status" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Check if in correct directory
$currentDir = Get-Location
Write-Host "✓ Current Directory: $currentDir" -ForegroundColor Green
Write-Host ""

# Check Git status
Write-Host "📦 Git Status:" -ForegroundColor Yellow
git status --short
Write-Host ""

# Check Git remote
Write-Host "🔗 Git Remote:" -ForegroundColor Yellow
$remote = git remote -v
if ($remote) {
    Write-Host $remote -ForegroundColor Green
} else {
    Write-Host "❌ No remote configured!" -ForegroundColor Red
    Write-Host "Run: git remote add origin https://github.com/Nikunjlakhani007/takecare-website.git" -ForegroundColor Yellow
}
Write-Host ""

# Check if files are committed
Write-Host "💾 Last Commit:" -ForegroundColor Yellow
git log -1 --oneline
Write-Host ""

# Next steps
Write-Host "================================" -ForegroundColor Cyan
Write-Host "  NEXT STEPS:" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "1️⃣  CREATE GITHUB REPO:" -ForegroundColor Green
Write-Host "   Go to: https://github.com/new" -ForegroundColor White
Write-Host "   Name: takecare-website" -ForegroundColor White
Write-Host "   Make it Public, don't initialize with README" -ForegroundColor White
Write-Host ""

Write-Host "2️⃣  PUSH TO GITHUB:" -ForegroundColor Green
Write-Host "   Run: git push -u origin main" -ForegroundColor Yellow
Write-Host "   (You may need GitHub Personal Access Token)" -ForegroundColor Gray
Write-Host ""

Write-Host "3️⃣  DEPLOY ON DIGITALOCEAN:" -ForegroundColor Green
Write-Host "   Go to: https://cloud.digitalocean.com" -ForegroundColor White
Write-Host "   Create → Apps → Connect GitHub → Deploy!" -ForegroundColor White
Write-Host ""

Write-Host "4️⃣  CONNECT DOMAIN:" -ForegroundColor Green
Write-Host "   In DigitalOcean: Add domain 'takemycare.me'" -ForegroundColor White
Write-Host "   In Namecheap: Update DNS records" -ForegroundColor White
Write-Host ""

Write-Host "📖 Full guide: GO-LIVE-NOW.md" -ForegroundColor Cyan
Write-Host ""
Write-Host "🚀 YOUR SITE WILL BE LIVE AT: https://takemycare.me" -ForegroundColor Magenta
Write-Host ""
