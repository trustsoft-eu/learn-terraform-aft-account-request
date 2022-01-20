module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "trustsoft-aft+sandbox@aws.trustsoft.org"
    AccountName               = "trustsoft-aft-sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "trustsoft-aft+sandbox@aws.trustsoft.org"
    SSOUserFirstName          = "trustsoft-aft"
    SSOUserLastName           = "sandbox"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

#module "prod" {
#  source = "./modules/aft-account-request"
#
#  control_tower_parameters = {
#    AccountEmail              = "trustsoft-aft+prod@aws.trustsoft.org"
#    AccountName               = "trustsoft-aft-prod"
#    ManagedOrganizationalUnit = "Prod"
#    SSOUserEmail              = "trustsoft-aft+prod@aws.trustsoft.org"
#    SSOUserFirstName          = "trustsoft-aft"
#    SSOUserLastName           = "prod"
#  }
#
#  account_tags = {
#    "Learn Tutorial" = "AFT"
#  }
#
#  change_management_parameters = {
#    change_requested_by = "Stefan Matic"
#    change_reason       = "Testing account creation"
#  }
#
#  custom_fields = {
#    group = "prod"
#  }
#
#  account_customizations_name = "sandbox"
#}

module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "trustsoft-aft+dev@aws.trustsoft.org"
    AccountName               = "trustsoft-aft-dev"
    ManagedOrganizationalUnit = "Dev"
    SSOUserEmail              = "trustsoft-aft+dev@aws.trustsoft.org"
    SSOUserFirstName          = "trustsoft-aft"
    SSOUserLastName           = "dev"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Stefan Matic"
    change_reason       = "Add development account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
