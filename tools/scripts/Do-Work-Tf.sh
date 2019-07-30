cd /home/scripts
export ASSET_STANDARD_TYPE=$1
export RG_NAME=$2
export RG_LOCATION=$3

terraform init -input=false ../templates/standard-$ASSET_STANDARD_TYPE/
terraform plan -out=tfplan -input=false ../templates/standard-$ASSET_STANDARD_TYPE/
terraform apply -input=false tfplan
