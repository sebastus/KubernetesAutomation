function Create-NewResourceGroup
{
    param
    (
    )
    # get environment vars
    $tenant_id = Get-Env "AZURE_TENANT_ID"
    $app_id = Get-Env "AZURE_APP_ID"
    $app_key = Get-Env "AZURE_APP_KEY"
    $subscription_id = Get-Env "AZURE_SUBSCRIPTION_ID"

    $rg_name = Get-Env "RG_NAME"
    $rg_location = Get-Env "RG_LOCATION"

    Connect-MyAzAccount -tenant_id $tenant_id -app_id $app_id `
        -app_key $app_key -subscription_id $subscription_id
    
    New-AzResourceGroup -Location $rg_location -Name $rg_name
}