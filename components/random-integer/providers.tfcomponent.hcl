required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.7"
  }
}

provider "random" "this" {}
