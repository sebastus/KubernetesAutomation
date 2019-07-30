# source the modules
. ./Get-Env.ps1
. ./Connect-MyAzAccount.ps1
. ./Deploy-AssetStandardType.ps1

# do the work
Deploy-AssetStandardType -standardType "raw"

