terraform {
  required_providers {
    shell = {
      source = "scottwinkler/shell"
      version = "1.7.10"
    }
  }
}

provider "shell" {
  # Configuration options
}

resource "shell_script" "github_repository" {
  lifecycle_commands {
    create = file("${path.module}/create.sh")
    read   = file("${path.module}/read.sh")
    update = file("${path.module}/update.sh")
    delete = file("${path.module}/delete.sh")
  }

  environment = {
    NAME        = "HELLO-WORLD2"
    DESCRIPTION = "description"
  }
}
