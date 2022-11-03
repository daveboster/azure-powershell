<#
 # Reference: https://www.logitblog.com/increase-the-success-rate-of-azure-devops-pipelines-using-pester/
#>
Param (
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]
    $ModulePath,

    [Parameter(Mandatory = $false)]
    [switch]
    $Publish,

    [Parameter(Mandatory=$false)]
    [string]
    $ResultsPath
)

$pesterModule = Get-Module -Name Pester -ListAvailable | Where-Object {$_.Version -like '5.*'}
if (!$pesterModule) { 
    try {
        Install-Module -Name Pester -Scope CurrentUser -Force -SkipPublisherCheck -MinimumVersion "5.0"
        $pesterModule = Get-Module -Name Pester -ListAvailable | Where-Object {$_.Version -like '5.*'}
    }
    catch {
        Write-Error "Failed to install the Pester module."
    }
}

Write-Host "Pester version: $($pesterModule.Version.Major).$($pesterModule.Version.Minor).$($pesterModule.Version.Build)"
$pesterModule | Import-Module

if ($Publish) {
    if (!(Test-Path -Path $ResultsPath)) {
        New-Item -Path $ResultsPath -ItemType Directory -Force | Out-Null
    }
}

$PesterConfig = New-PesterConfiguration
$PesterConfig.Run.Path = $ModulePath
$PesterConfig.TestResult.OutputFormat = "NUnitXml"
$PesterConfig.TestResult.OutputPath = "$ResultsPath/Test-Pester.xml"
$PesterConfig.TestResult.Enabled = $Publish.IsPresent
$PesterConfig.CodeCoverage.Enabled = $Publish.IsPresent
$PesterConfig.CodeCoverage.OutputPath = "$ResultsPath/Pester-Coverage.xml"
$PesterConfig.CodeCoverage.OutputFormat = "JaCoCo"

Invoke-Pester -Configuration $PesterConfig
