locals {
  common_organization_policies = [
    { constraint = "ainotebooks.accessMode", rules = [{ allow_all = "TRUE" }] },
    { constraint = "ainotebooks.environmentOptions", rules = [{ allow_all = "TRUE" }] },
    { constraint = "cloudfunctions.allowedVpcConnectorEgressSettings", rules = [{ allow_all = "TRUE" }] },
    { constraint = "compute.disablePrivateServiceConnectCreationForConsumers", rules = [{ allow_all = "TRUE" }] },
    { constraint = "compute.restrictLoadBalancerCreationForTypes", rules = [{ allow_all = "TRUE" }] },
    { constraint = "compute.restrictNonConfidentialComputing", rules = [{ allow_all = "TRUE" }] },
    { constraint = "compute.restrictVpnPeerIPs", rules = [{ allow_all = "TRUE" }] },
    { constraint = "gcp.restrictCmekCryptoKeyProjects", rules = [{ allow_all = "TRUE" }] },
    { constraint = "gcp.restrictNonCmekServices", rules = [{ allow_all = "TRUE" }] },
    { constraint = "gcp.restrictServiceUsage", rules = [{ allow_all = "TRUE" }] },
    { constraint = "meshconfig.allowedVpcscModes", rules = [{ allow_all = "TRUE" }] },
    { constraint = "run.allowedBinaryAuthorizationPolicies", rules = [{ allow_all = "TRUE" }] },
    { constraint = "serviceuser.services", rules = [{ allow_all = "TRUE" }] },
    { constraint = "storage.retentionPolicySeconds", rules = [{ allow_all = "TRUE" }] },
    { constraint = "compute.restrictDedicatedInterconnectUsage", rules = [{ deny_all = "TRUE" }] },
    { constraint = "compute.restrictPartnerInterconnectUsage", rules = [{ deny_all = "TRUE" }] },
    { constraint = "compute.vmExternalIpAccess", rules = [{ deny_all = "TRUE" }] },
    { constraint = "iam.allowServiceAccountCredentialLifetimeExtension", rules = [{ deny_all = "TRUE" }] },
    { constraint = "iam.workloadIdentityPoolAwsAccounts", rules = [{ deny_all = "TRUE" }] },
    { constraint = "iam.workloadIdentityPoolProviders", rules = [{ deny_all = "TRUE" }] },
    { constraint = "resourcemanager.allowedImportSources", rules = [{ deny_all = "TRUE" }] },
    { constraint = "ainotebooks.disableRootAccess", rules = [{ enforce = "TRUE" }] },
    { constraint = "ainotebooks.requireAutoUpgradeSchedule", rules = [{ enforce = "TRUE" }] },
    { constraint = "ainotebooks.restrictPublicIp", rules = [{ enforce = "TRUE" }] },
    { constraint = "appengine.disableCodeDownload", rules = [{ enforce = "TRUE" }] },
    { constraint = "appengine.enforceServiceAccountActAsCheck", rules = [{ enforce = "FALSE" }] },
    { constraint = "bigquery.disableBQOmniAWS", rules = [{ enforce = "FALSE" }] },
    { constraint = "bigquery.disableBQOmniAzure", rules = [{ enforce = "FALSE" }] },
    { constraint = "clouddeploy.disableServiceLabelGeneration", rules = [{ enforce = "FALSE" }] },
    { constraint = "cloudfunctions.requireVPCConnector", rules = [{ enforce = "FALSE" }] },
    { constraint = "commerceorggovernance.disablePublicMarketplace", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.disableAllIpv6", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableGlobalCloudArmorPolicy", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableGlobalLoadBalancing", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableGlobalSelfManagedSslCertificate", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.disableGlobalSerialPortAccess", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.disableGuestAttributesAccess", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.disableHybridCloudIpv6", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableInternetNetworkEndpointGroup", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableNestedVirtualization", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableNonFIPSMachineTypes", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.disableSerialPortAccess", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.disableSerialPortLogging", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableSshInBrowser", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableVpcExternalIpv6", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.disableVpcInternalIpv6", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.requireOsLogin", rules = [{ enforce = "FALSE" }] },
    { constraint = "compute.requireShieldedVm", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.restrictXpnProjectLienRemoval", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.setNewProjectDefaultToZonalDNSOnly", rules = [{ enforce = "TRUE" }] },
    { constraint = "compute.skipDefaultNetworkCreation", rules = [{ enforce = "TRUE" }] },
    { constraint = "dataproc.enforceComputeDefaultServiceAccountCheck", rules = [{ enforce = "FALSE" }] },
    { constraint = "datastream.disablePublicConnectivity", rules = [{ enforce = "FALSE" }] },
    { constraint = "essentialcontacts.disableProjectSecurityContacts", rules = [{ enforce = "FALSE" }] },
    { constraint = "firestore.requireP4SAforImportExport", rules = [{ enforce = "TRUE" }] },
    { constraint = "gcp.detailedAuditLoggingMode", rules = [{ enforce = "TRUE" }] },
    { constraint = "gcp.disableCloudLogging", rules = [{ enforce = "TRUE" }] },
    { constraint = "iam.automaticIamGrantsForDefaultServiceAccounts", rules = [{ enforce = "FALSE" }] },
    { constraint = "iam.disableAuditLoggingExemption", rules = [{ enforce = "TRUE" }] },
    { constraint = "iam.disableServiceAccountCreation", rules = [{ enforce = "FALSE" }] },
    { constraint = "iam.disableServiceAccountKeyCreation", rules = [{ enforce = "TRUE" }] },
    { constraint = "iam.disableServiceAccountKeyUpload", rules = [{ enforce = "TRUE" }] },
    { constraint = "iam.disableWorkloadIdentityClusterCreation", rules = [{ enforce = "FALSE" }] },
    { constraint = "iam.restrictCrossProjectServiceAccountLienRemoval", rules = [{ enforce = "FALSE" }] },
    { constraint = "iap.requireGlobalIapWebDisabled", rules = [{ enforce = "FALSE" }] },
    { constraint = "iap.requireRegionalIapWebDisabled", rules = [{ enforce = "FALSE" }] },
    { constraint = "sql.restrictAuthorizedNetworks", rules = [{ enforce = "TRUE" }] },
    { constraint = "sql.restrictPublicIp", rules = [{ enforce = "TRUE" }] },
    { constraint = "storage.publicAccessPrevention", rules = [{ enforce = "TRUE" }] },
    { constraint = "storage.uniformBucketLevelAccess", rules = [{ enforce = "TRUE" }] },
    { constraint = "cloudbuild.allowedIntegrations", rules = [{ type = "Allow", values = ["github.com"] }] },
    { constraint = "cloudbuild.allowedWorkerPools", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "cloudfunctions.allowedIngressSettings", rules = [{ type = "Allow", values = ["ALLOW_INTERNAL_ONLY", "ALLOW_INTERNAL_AND_GCLB"] }] },
    { constraint = "cloudfunctions.restrictAllowedGenerations", rules = [{ type = "Allow", values = ["2ndGen"] }] },
    { constraint = "cloudkms.allowedProtectionLevels", rules = [{ type = "Allow", values = ["SOFTWARE", "HSM"] }] },
    { constraint = "cloudscheduler.allowedTargetTypes", rules = [{ type = "Allow", values = ["APPENGINE", "HTTP", "PUBSUB"] }] },
    { constraint = "commerceorggovernance.marketplaceServices", rules = [{ type = "Allow", values = ["PRIVATE_MARKETPLACE", "IAAS_PROCUREMENT"] }] },
    { constraint = "compute.allowedVlanAttachmentEncryption", rules = [{ type = "Allow", values = ["IPSEC"] }] },
    { constraint = "compute.requireVpcFlowLogs", rules = [{ type = "Allow", values = ["ESSENTIAL", "LIGHT", "COMPREHENSIVE"] }] },
    { constraint = "compute.restrictCloudNATUsage", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "compute.restrictPrivateServiceConnectConsumer", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "compute.restrictPrivateServiceConnectProducer", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "compute.restrictProtocolForwardingCreationForTypes", rules = [{ type = "Allow", values = ["INTERNAL"] }] },
    { constraint = "compute.restrictSharedVpcBackendServices", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "compute.restrictSharedVpcHostProjects", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "compute.restrictSharedVpcSubnetworks", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "compute.restrictVpcPeering", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "compute.sharedReservationsOwnerProjects", rules = [{ type = "Allow", values = ["${var.admin_project_id}"] }] },
    { constraint = "compute.storageResourceUseRestrictions", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "compute.trustedImageProjects", rules = [{ type = "Allow", values = ["${var.admin_project_id}"] }] },
    { constraint = "compute.vmCanIpForward", rules = [{ type = "Allow", values = ["under:${var.parent_id}"] }] },
    { constraint = "essentialcontacts.allowedContactDomains", rules = [{ type = "Allow", values = [for allowed_domain in var.allowed_domains : "is:@${allowed_domain}"] }] },
    { constraint = "gcp.resourceLocations", rules = [{ type = "Allow", values = ["in:europe-low-carbon-locations"] }] },
    { constraint = "iam.allowedPolicyMemberDomains", rules = [{ type = "Allow", values = var.allowed_customer_ids }] },
    { constraint = "iam.serviceAccountKeyExpiryHours", rules = [{ type = "Allow", values = ["24h"] }] },
    { constraint = "resourcemanager.allowedExportDestinations", rules = [{ type = "Allow", values = var.export_candidate_parent_ids == [] ? ["under:${var.parent_id}"] : concat([for parent_id in var.export_candidate_parent_ids : "under:${parent_id}"], ["under:${var.parent_id}"]) }] },
    { constraint = "resourcemanager.allowEnabledServicesForExport", rules = [{ type = "Allow", values = ["SHARED_VPC"] }] },
    { constraint = "run.allowedIngress", rules = [{ type = "Allow", values = ["internal", "internal-and-cloud-load-balancing"] }] },
    { constraint = "run.allowedVPCEgress", rules = [{ type = "Allow", values = ["private-ranges-only", "all-traffic"] }] },
    { constraint = "storage.restrictAuthTypes", rules = [{ allow_all = "TRUE" }] },
    { constraint = "gcp.restrictTLSVersion", rules = [{ type = "Deny", values = ["TLS_VERSION_1", "TLS_VERSION_1_1"] }] }
  ]

  common_policies_map = { for value in local.common_organization_policies : value.constraint => value }
  custom_policies_map = { for value in var.custom_organization_policies : value.constraint => value }

  merged_policies_map = merge(
    local.common_policies_map,
    local.custom_policies_map,
  )
}

resource "google_org_policy_policy" "organization_policies" {
  for_each = { for index, object in values(local.merged_policies_map) : object.constraint => object }

  name   = "${var.parent_id}/policies/${each.value.constraint}"
  parent = var.parent_id

  spec {
    inherit_from_parent = lookup(each.value, "inherit_from_parent", false)

    dynamic "rules" {
      for_each = each.value.rules

      content {
        allow_all = lookup(rules.value, "allow_all", null)
        deny_all  = lookup(rules.value, "deny_all", null)
        dynamic "values" {
          for_each = lookup(rules.value, "type", null) != null ? [rules.value] : []
          content {
            allowed_values = values.value.type == "Allow" ? values.value.values : null
            denied_values  = values.value.type == "Deny" ? values.value.values : null
          }
        }
        enforce = lookup(rules.value, "enforce", null)
        dynamic "condition" {
          for_each = lookup(rules.value, "condition", null) != null ? [rules.value.condition] : []
          content {
            description = lookup(condition.value, "description", null)
            expression  = lookup(condition.value, "expression", null)
            location    = lookup(condition.value, "location", null)
            title       = lookup(condition.value, "title", null)
          }
        }
      }
    }
  }
}
