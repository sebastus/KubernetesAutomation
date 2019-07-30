variable "AZURE_APP_KEY" {}
variable "AZURE_SUBSCRIPTION_ID" {}
variable "AZURE_APP_ID" {}
variable "AZURE_TENANT_ID"{}

provider "azurerm" {
  version = "~> 1.28.0"

  subscription_id = "${var.AZURE_SUBSCRIPTION_ID}"
  client_id       = "${var.AZURE_APP_ID}"
  client_secret   = "${var.AZURE_APP_KEY}"
  tenant_id       = "${var.AZURE_TENANT_ID}"
}

variable "RG_NAME" {}
variable "RG_LOCATION" {}

resource "azurerm_resource_group" "rg" {
  name     = "${var.RG_NAME}"
  location = "${var.RG_LOCATION}"
}

resource "azurerm_databricks_workspace" "db" {
  name                = "myWorkspace"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location            = "${azurerm_resource_group.rg.location}"
  sku                 = "standard"
}