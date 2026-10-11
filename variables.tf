variable "managed_kafka_kafka_clusters" {
  description = <<EOT
Map of managed_kafka_kafka_clusters, attributes below
Required:
    - cluster_config_id
    - cluster_config_version
    - cluster_type
    - compartment_id
    - coordination_type
    - kafka_version
    - access_subnets (block):
        - subnets (required)
    - broker_shape (block):
        - node_count (required)
        - node_shape (optional)
        - ocpu_count (required)
        - storage_size_in_gbs (optional)
Optional:
    - client_certificate_bundle
    - defined_tags
    - display_name
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster_config_id         = string
    cluster_config_version    = number
    cluster_type              = string
    compartment_id            = string
    coordination_type         = string
    kafka_version             = string
    client_certificate_bundle = optional(string)
    defined_tags              = optional(map(string))
    display_name              = optional(string)
    freeform_tags             = optional(map(string))
    access_subnets = list(object({
      subnets = list(string)
    }))
    broker_shape = object({
      node_count          = number
      node_shape          = optional(string)
      ocpu_count          = number
      storage_size_in_gbs = optional(number)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.managed_kafka_kafka_clusters : (
        length(v.access_subnets) >= 1
      )
    ])
    error_message = "Each access_subnets list must contain at least 1 items"
  }
}

