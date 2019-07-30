cd /home/scripts
export ASSET_STANDARD_TYPE=$1
export RG_NAME=$2
export RG_LOCATION=$3
terraform init -input=false
terraform plan -out=tfplan -input=false
terraform apply -input=false tfplan
