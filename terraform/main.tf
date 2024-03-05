# Module declaration for new account creation

module "sandbox" {
  source                          = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail                  = var.account_email       
    AccountName                   = var.account_name        
    ManagedOrganizationalUnit     = var.managed_ou         
    SSOUserEmail                  = var.sso_user_email     
    SSOUserFirstName              = var.sso_user_first_name                      
    SSOUserLastName               = var.sso_user_last_name                
  }
  account_tags                    = var.account_tags 
  change_management_parameters = {
    change_requested_by           = var.change_requested_by 
    change_reason                 = var.change_reason    
  }

  custom_fields                   = var.custom_fields 

  account_customizations_name     = var.account_customizations_name  
}
