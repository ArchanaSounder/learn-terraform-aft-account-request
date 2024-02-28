/*
module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "praveen.soundararajan@cloud-kinetics.com"
    AccountName               = "aft-landing-dev01"
    ManagedOrganizationalUnit = "Sandbox"
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

  account_customizations_name = "aft-landing-dev01"
}
*/

module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = var.account_email       #"praveen.soundararajan@cloud-kinetics.com"
    AccountName               = var.account_name        #"aft-landing-dev02"
    ManagedOrganizationalUnit = var.managed_ou          #"Sandbox"
    SSOUserEmail              = var.sso_user_email     #"archana@cloud-kinetics.com"
    SSOUserFirstName          = var.sso_user_first_name                       #"Archana"
    SSOUserLastName           = var.sso_user_last_name                     #"Sounder"
  }

  account_tags = var.account_tags /*{
    "test" = "AFT"
  }*/

  change_management_parameters = {
    change_requested_by =  var.change_requested_by #learn aft
    change_reason       =var.change_reason    #"Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = var.custom_fields /* {
    group = "non-prod"
  }*/

  account_customizations_name = var.account_customizations_name  #"aft-landing-dev02"
}
