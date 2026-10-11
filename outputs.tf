output "networkmanager_core_networks_id" {
  description = "Map of id values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networkmanager_core_networks_arn" {
  description = "Map of arn values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "networkmanager_core_networks_base_policy_document" {
  description = "Map of base_policy_document values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.base_policy_document if v.base_policy_document != null && length(v.base_policy_document) > 0 }
}
output "networkmanager_core_networks_base_policy_regions" {
  description = "Map of base_policy_regions values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.base_policy_regions if v.base_policy_regions != null && length(v.base_policy_regions) > 0 }
}
output "networkmanager_core_networks_create_base_policy" {
  description = "Map of create_base_policy values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.create_base_policy if v.create_base_policy != null }
}
output "networkmanager_core_networks_created_at" {
  description = "Map of created_at values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "networkmanager_core_networks_description" {
  description = "Map of description values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "networkmanager_core_networks_edges" {
  description = "Map of edges values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.edges if v.edges != null && length(v.edges) > 0 }
}
output "networkmanager_core_networks_global_network_id" {
  description = "Map of global_network_id values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.global_network_id if v.global_network_id != null && length(v.global_network_id) > 0 }
}
output "networkmanager_core_networks_segments" {
  description = "Map of segments values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.segments if v.segments != null && length(v.segments) > 0 }
}
output "networkmanager_core_networks_state" {
  description = "Map of state values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.state if v.state != null && length(v.state) > 0 }
}
output "networkmanager_core_networks_tags" {
  description = "Map of tags values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "networkmanager_core_networks_tags_all" {
  description = "Map of tags_all values across all networkmanager_core_networks, keyed the same as var.networkmanager_core_networks"
  value       = { for k, v in aws_networkmanager_core_network.networkmanager_core_networks : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

