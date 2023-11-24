resource "tfe_organization" "lomar" {
  name  = "lomar"
  email = "amar@hashicorp.com"
}

resource "tfe_workspace" "test" {
  name         = "landing-zone"
  organization = tfe_organization.lomar.name
}

resource "tfe_variable" "arm_subscription_id" {
  key          = "arm_subscription_id"
  value        = "9d2046c6-eae4-4a64-89f6-94d549f7bdbf"
  category     = "terraform"
  workspace_id = "ws-hC4yRRjYepNV2ADs"
}

resource "tfe_variable" "arm_tenant_id" {
  key          = "arm_tenant_id"
  value        = "416f7473-ca1a-4528-a4b8-6807af357039"
  category     = "terraform"
  workspace_id = "ws-hC4yRRjYepNV2ADs"
}

resource "tfe_variable" "resource_group_name" {
  key          = "resource_group_name"
  value        = "vault"
  category     = "terraform"
  workspace_id = "ws-hC4yRRjYepNV2ADs"
}

resource "tfe_variable" "vault_azure_secret_backend_path" {
  key = "vault_azure_secret_backend_path"
  value = "azure"
  category = "terraform"
  workspace_id = "ws-hC4yRRjYepNV2ADs"
}

resource "tfe_variable" "vault_azure_secret_backend_role" {
  key = "vault_azure_secret_backend_role"
  value = "my-role"
  category = "terraform"
  workspace_id = "ws-hC4yRRjYepNV2ADs"
}

# Fügen Sie für jede weitere Variable ähnliche Blöcke hinzu
resource "tfe_variable" "vault_token" {
  key          = "vault_token"
  value        = "hvs-token"
  category     = "terraform"
  workspace_id = "ws-hC4yRRjYepNV2ADs"
  sensitive    = true
}


