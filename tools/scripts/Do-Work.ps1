# source the modules
. ./Get-Env.ps1
. ./Connect-MyAzAccount.ps1
. ./Deploy-AssetStandardType.ps1

$standardType = Get-Env "ASSET_STANDARD_TYPE"

# do the work
Deploy-AssetStandardType -standardType $standardType

