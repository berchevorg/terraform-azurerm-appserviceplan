resource "azurerm_resource_group" "example" {
  name     = "example-resources2"
  location = "West Europe"
}

resource "azurerm_service_plan" "example" {
  name                = "example_new_resource2"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}
