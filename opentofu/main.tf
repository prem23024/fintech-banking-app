terraform {
  required_version = ">= 1.6.0"
}

provider "local" {
  # Local provider to manage local files or directories as a demonstration of IaC
}

resource "local_file" "devops_manifest" {
  content  = "Infrastructure managed by OpenTofu for FinTech Platform"
  filename = "${path.module}/infrastructure-status.txt"
}

output "deployment_status" {
  value = "OpenTofu infrastructure module initialized successfully."
}
