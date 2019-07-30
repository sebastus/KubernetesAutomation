variable "resource_group_name"
variable "location"

resource "azurerm_resource_group" "rg" {
  name     = "var.resource_group_name"
  location = "var.location"
}

resource "azurerm_databricks_workspace" "db" {
  name                = "myWorkspace"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location            = "${azurerm_resource_group.rg.location}"
  sku                 = "standard"
}