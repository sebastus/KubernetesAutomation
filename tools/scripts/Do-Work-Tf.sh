cd /home/scripts

terraform init -input=false ../templates/$ASSET_CONFIGURATION/

terraform plan -out=tfplan -input=false  \
    -var AZURE_SUBSCRIPTION_ID=$AZURE_SUBSCRIPTION_ID \
    -var AZURE_APP_ID=$AZURE_APP_ID \
    -var AZURE_APP_KEY=$AZURE_APP_KEY \
    -var AZURE_TENANT_ID=$AZURE_TENANT_ID \
    -var RG_NAME=$RG_NAME \
    -var RG_LOCATION=$RG_LOCATION \
    ../templates/$ASSET_CONFIGURATION/

terraform apply -input=false tfplan
