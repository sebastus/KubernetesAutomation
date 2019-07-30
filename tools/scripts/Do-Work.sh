cd /home/scripts
export ASSET_STANDARD_TYPE=$1
export RG_NAME=$2
export RG_LOCATION=$3
pwsh  -ExecutionPolicy Unrestricted -File Do-Work.ps1