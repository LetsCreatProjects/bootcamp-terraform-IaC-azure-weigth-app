# --- variables

variable "RG" {
  default = "RG_VMSS_with_postgresSQL"
  description = "RG_VMSS_with_postgresSQL"
}

variable "tags" {
  default = "enviroment"
  description = "tags"
}

variable "VnetName" {
  default = "Vnet"
  description = "VnetName"
}

variable "ScaleSetName" {
  default = "AppScaleSet"
  description = "ScaleSetName"
}

variable "address_space" {
  type    = list(any)
  default = ["10.10.0.0/16"]
}

variable "location" {
  type        = string
  description = "Azure location of terraform server environment"
  default     = "australiaeast"

}

variable "admin_user_name" {
  type        = string
  default     = "admin_user_name"
  description = "user name for vm login"
}
variable "admin_password" {
  type        = string
  description = "password for vm login"
  default     = "Input your password here"

}

variable "okta_secret" {
  default = ""
  description = "okta_secret"
}

variable "okta_client_id" {
  default = ""
  description = "okta_client_id"
}

variable "okta_org_url" {
  default = ""
  description = "okta_org_url"
}

variable "okta_key" {
  default = ""
  description = "okta_key"
}

variable "pg_user" {
  # default = ""
  description = "pg_user"
}

variable "pg_pass" {
  # default = ""
  description = "pg_pass"
}
variable "instance_num" {
  default     = 2
  description = "scale set min instance num to differ the Staging and Production workspaces"
}


# ///------------------------
variable "Vnet" {
  default = "Vnet"
  description = "Vnet"
}
