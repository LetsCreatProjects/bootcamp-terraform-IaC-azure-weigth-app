/*----------------------------------------------------------------------------------------*/
#  output
/*----------------------------------------------------------------------------------------*/

output "VMSS_Password" {
  value =module.Scale_set_module.password
  sensitive = true
}