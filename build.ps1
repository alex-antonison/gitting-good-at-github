<#
    PowerShell-native build script for pnpm + Slidev
    Works from ANY folder — auto-detects project root even in subfolders.
#>

param(
    [Parameter(Position=0)]
    [string]$Task = "help"
)

# --- Locate project root (search downward for package.json) ---
function Get-ProjectRoot {
    $start = $PSScriptRoot

    $result = Get-ChildItem -Path $start -Recurse -Filter "package.json" -ErrorAction SilentlyContinue |
              Select-Object -First 1

    if ($null -eq $result) {
        throw "❌ Could not find package.json anywhere under $start"
    }

    return $result.Directory.FullName
}

$ProjectRoot = Get-ProjectRoot
Set-Location $ProjectRoot

# --- Task runner ---
function Invoke-Task {
    param([string]$Name)

    switch ($Name.ToLower()) {

        "dev" {
            Write-Host "🚀 Starting Slidev dev server..."
            pnpm exec slidev --open
        }

        "build" {
            Write-Host "📦 Building Slidev deck..."
            pnpm exec slidev build
        }

        "pdf" {
            Write-Host "🖨 Exporting Slidev deck to PDF..."
            pnpm exec slidev export --format pdf
        }

        "clean" {
            Write-Host "🧹 Cleaning build output..."
            Remove-Item -Recurse -Force dist -ErrorAction SilentlyContinue
        }

        "install" {
            Write-Host "📥 Installing dependencies with pnpm..."
            pnpm install
        }

        "setup" {
            Write-Host "🛠 Running full project setup..."
            Write-Host "📥 Installing dependencies..."
            pnpm install

            Write-Host "🌐 Installing Playwright browsers..."
            pnpm exec playwright install

            Write-Host "✅ Setup complete! You can now run:"
            Write-Host "   ./build.ps1 dev"
            Write-Host "   ./build.ps1 pdf"
        }

        "help" {
            Write-Host ""
            Write-Host "Available tasks:" -ForegroundColor Cyan
            Write-Host "  dev       Run Slidev in dev mode"
            Write-Host "  build     Build static slides"
            Write-Host "  pdf       Export slides to PDF"
            Write-Host "  clean     Remove build output"
            Write-Host "  install   Install dependencies"
            Write-Host "  setup     Install deps + Playwright browsers"
            Write-Host "  help      Show this help message"
            Write-Host ""
        }

        default {
            Write-Host "❌ Unknown task: $Name" -ForegroundColor Red
            Write-Host "Run: ./build.ps1 help"
        }
    }
}

Invoke-Task $Task
