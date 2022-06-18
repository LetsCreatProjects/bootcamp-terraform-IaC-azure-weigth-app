/*----------------------------------------------------------------------------------------*/
/* azurerm_storage_account                  */
/*----------------------------------------------------------------------------------------*/
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true
}
/*----------------------------------------------------------------------------------------*/
/* azurerm_storage_container                  */
/*----------------------------------------------------------------------------------------*/
resource "azurerm_storage_container" "container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "container" # "blob" "private"
}

/*----------------------------------------------------------------------------------------*/
/* azurerm_storage_blob                  */
/*----------------------------------------------------------------------------------------*/
resource "azurerm_storage_blob" "blob" {
  name                   = "terraform.tfstate"
  storage_account_name   = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
  source                 = "terraformv.tfstate"
}
/*----------------------------------------------------------------------------------------*/
/* terraform backend                */
/*----------------------------------------------------------------------------------------*/
terraform {
  backend "azurerm" {
    resource_group_name  = "RG_VMSS_with_postgresSQL"
    storage_account_name = "sdfsfoiwesssdsrtnbklkds"
    container_name       = "sdfsfoiwesssdsrtnbklkds"
    key                  = "terraform.tfstate"
  }
}