output "text" {
  value = "Hello World"
}

output "hello_world_var" {
  value = var.hello_world_var
}

output "hello_world_local" {
  value = local.hello_world_local
}

output "data_source" {
  value = jsondecode(data.http.tf_version.response_body).current_version
}

output "resource" {
  value = random_pet.pet.id
}

output "module" {
  value = module.pet_name.name
}
