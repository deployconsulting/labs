output "text" {
  description = "Static text"
  value = "Text"
}

output "variable" {
  description = "An input variable"
  value = var.hello_world
}

output "local" {
  description = "A local variable"
  value = local.hello_world
}

output "data_source" {
  description = "Output from a data source"
  value = jsondecode(data.http.tf_version.response_body).current_version
}

output "resource" {
  description = "Output from a resource"
  value = random_pet.pet.id
}