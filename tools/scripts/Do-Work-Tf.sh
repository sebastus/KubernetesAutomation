cd /home/scripts

export ASSET_STANDARD_TYPE=$1
export RG_NAME=$2
export RG_LOCATION=$3

terraform init -input=false ../templates/standard-$ASSET_STANDARD_TYPE/

terraform plan -out=tfplan -input=false  \
    -var AZURE_SUBSCRIPTION_ID=$AZURE_SUBSCRIPTION_ID \
    -var AZURE_APP_ID=$AZURE_APP_ID \
    -var AZURE_APP_KEY=$AZURE_APP_KEY \
    -var AZURE_TENANT_ID=$AZURE_TENANT_ID \
    -var RG_NAME=$RG_NAME \
    -var RG_LOCATION=$RG_LOCATION \
    ../templates/standard-$ASSET_STANDARD_TYPE/

terraform apply -input=false tfplan
