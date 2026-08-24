stack "random_integer" {
  source  = "app.terraform.io/MY-ORG-NAME/random-integer"
  version = "~> 1.0"

  inputs = {
    min = var.min
    max = var.max
  }
}
