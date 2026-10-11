resource "oci_managed_kafka_kafka_cluster" "managed_kafka_kafka_clusters" {
  for_each = var.managed_kafka_kafka_clusters

  cluster_config_id         = each.value.cluster_config_id
  cluster_config_version    = each.value.cluster_config_version
  cluster_type              = each.value.cluster_type
  compartment_id            = each.value.compartment_id
  coordination_type         = each.value.coordination_type
  kafka_version             = each.value.kafka_version
  client_certificate_bundle = each.value.client_certificate_bundle
  defined_tags              = each.value.defined_tags
  display_name              = each.value.display_name
  freeform_tags             = each.value.freeform_tags

  dynamic "access_subnets" {
    for_each = each.value.access_subnets
    content {
      subnets = access_subnets.value.subnets
    }
  }

  broker_shape {
    node_count          = each.value.broker_shape.node_count
    node_shape          = each.value.broker_shape.node_shape
    ocpu_count          = each.value.broker_shape.ocpu_count
    storage_size_in_gbs = each.value.broker_shape.storage_size_in_gbs
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

