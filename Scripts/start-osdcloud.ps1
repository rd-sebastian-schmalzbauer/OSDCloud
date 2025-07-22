Write-Host  -ForegroundColor Yellow "Starting OSDCloud ..."
Clear-Host
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Installation"-ForegroundColor Yellow
Write-Host "2: OSD Cloud GUI" -ForegroundColor Yellow
Write-Host "4: Exit`n"-ForegroundColor Yellow
$selection = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($selection)
{
    '1' { Start-OSDPad -RepoOwner rd-sebastian-schmalzbauer -RepoName OSDCloud -RepoFolder ZTI_Scripts -BrandingTitle 'Cloud Deployment' -Hide Script } 
    '2' { Start-OSDCloudGUI } 
    '3' { Exit		}
}