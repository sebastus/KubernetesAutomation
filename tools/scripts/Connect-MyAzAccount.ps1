function Connect-MyAzAccount
{
    param
    (
        [Parameter(Mandatory=$true)]
        [String]$tenant_id,

        [Parameter(Mandatory=$true)]
        [String]$app_id,

        [Parameter(Mandatory=$true)]
        [String]$app_key,

        [Parameter(Mandatory=$true)]
        [String]$subscription_id
    )    

    $tenant_id
    $app_id
    $app_key
    $subscription_id
    
    $passwd = ConvertTo-SecureString $app_key -AsPlainText -Force
    $pscredential = New-Object System.Management.Automation.PSCredential($app_id, $passwd)
    Connect-AzAccount -ServicePrincipal -Credential $pscredential -TenantId $tenant_id

    Get-AzSubscription -SubscriptionId $subscription_id -TenantId $tenant_id | Set-AzContext

}