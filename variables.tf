variable "jms_fleet_uncorrelated_package_managed_instances_lookup" {
  description = <<EOT
Map of jms_fleet_uncorrelated_package_managed_instances_lookup, attributes below
Required:
    - fleet_id
    - package_name
Optional:
    - application_id
    - managed_instance_id
    - time_end
    - time_start
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    fleet_id            = string
    package_name        = string
    application_id      = optional(string)
    managed_instance_id = optional(string)
    time_end            = optional(string)
    time_start          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

