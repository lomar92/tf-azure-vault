variable "vault_addr" {
  description = "URL of the vault cluster"
}

variable "vault_token" {
  description = "token-for-test"
}

variable "vault_namespace" {
    description = "Namespace of the Vault Cluster"  
}

variable "login_approle_role_id" {
    description = "Login role for the vault approle"  
}

variable "login_approle_secret_id" {
    description = "Secret id for the approle"  
}

variable "vault_azure_secret_backend_role" {
    description = "Role for getting creds from Azure"  
}

variable "arm_tenant_id" {
    description = "Tenant id in Azure"  
}

variable "arm_subscription_id" {
    description = "Subscription id in Azure"  
}

variable "vault_azure_secret_backend_path" {
    description = "Backend path in Vault for reading secrets"  
}

variable "resource_group_name" {
}