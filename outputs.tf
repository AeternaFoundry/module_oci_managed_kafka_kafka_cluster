output "managed_kafka_kafka_clusters_id" {
  description = "Map of id values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no id are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_kafka_kafka_clusters_access_subnets" {
  description = "Map of access_subnets values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no access_subnets are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.access_subnets if v.access_subnets != null && length(v.access_subnets) > 0 }
}
output "managed_kafka_kafka_clusters_broker_shape" {
  description = "Map of broker_shape values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no broker_shape are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => one(v.broker_shape) if v.broker_shape != null && length(v.broker_shape) > 0 }
}
output "managed_kafka_kafka_clusters_client_certificate_bundle" {
  description = "Map of client_certificate_bundle values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no client_certificate_bundle are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.client_certificate_bundle if v.client_certificate_bundle != null && length(v.client_certificate_bundle) > 0 }
}
output "managed_kafka_kafka_clusters_cluster_config_id" {
  description = "Map of cluster_config_id values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no cluster_config_id are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.cluster_config_id if v.cluster_config_id != null && length(v.cluster_config_id) > 0 }
}
output "managed_kafka_kafka_clusters_cluster_config_version" {
  description = "Map of cluster_config_version values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no cluster_config_version are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.cluster_config_version if v.cluster_config_version != null }
}
output "managed_kafka_kafka_clusters_cluster_type" {
  description = "Map of cluster_type values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no cluster_type are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.cluster_type if v.cluster_type != null && length(v.cluster_type) > 0 }
}
output "managed_kafka_kafka_clusters_compartment_id" {
  description = "Map of compartment_id values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no compartment_id are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "managed_kafka_kafka_clusters_coordination_type" {
  description = "Map of coordination_type values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no coordination_type are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.coordination_type if v.coordination_type != null && length(v.coordination_type) > 0 }
}
output "managed_kafka_kafka_clusters_defined_tags" {
  description = "Map of defined_tags values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no defined_tags are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "managed_kafka_kafka_clusters_display_name" {
  description = "Map of display_name values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no display_name are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "managed_kafka_kafka_clusters_freeform_tags" {
  description = "Map of freeform_tags values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "managed_kafka_kafka_clusters_kafka_bootstrap_urls" {
  description = "Map of kafka_bootstrap_urls values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no kafka_bootstrap_urls are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.kafka_bootstrap_urls if v.kafka_bootstrap_urls != null && length(v.kafka_bootstrap_urls) > 0 }
}
output "managed_kafka_kafka_clusters_kafka_version" {
  description = "Map of kafka_version values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no kafka_version are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.kafka_version if v.kafka_version != null && length(v.kafka_version) > 0 }
}
output "managed_kafka_kafka_clusters_lifecycle_details" {
  description = "Map of lifecycle_details values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "managed_kafka_kafka_clusters_secret_id" {
  description = "Map of secret_id values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no secret_id are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.secret_id if v.secret_id != null && length(v.secret_id) > 0 }
}
output "managed_kafka_kafka_clusters_state" {
  description = "Map of state values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no state are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "managed_kafka_kafka_clusters_system_tags" {
  description = "Map of system_tags values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no system_tags are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "managed_kafka_kafka_clusters_time_created" {
  description = "Map of time_created values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no time_created are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "managed_kafka_kafka_clusters_time_updated" {
  description = "Map of time_updated values across all managed_kafka_kafka_clusters, keyed the same as var.managed_kafka_kafka_clusters except keys with no time_updated are omitted"
  value       = { for k, v in oci_managed_kafka_kafka_cluster.managed_kafka_kafka_clusters : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

