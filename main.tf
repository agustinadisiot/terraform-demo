terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {
  # Configuration options
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo 'hello world' "
  }
}
