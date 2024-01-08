module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "praveen.soundararajan@cloud-kinetics.com"
    AccountName               = "aft-landing-dev"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "archana@cloud-kinetics.com"
    SSOUserFirstName          = "Archana"
    SSOUserLastName           = "Sounder"
  }

  account_tags = {
    "test" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "aft-landing-dev"
}
