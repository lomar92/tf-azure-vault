## instead use data source for retrieve variables?
## https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/variables 

data "tfe_workspace" "master" {
  name         = "tf-azure-vault"
  organization = "lomar"
}

data "tfe_variables" "test" {
  workspace_id = data.tfe_workspace.master.id
}