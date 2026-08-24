# random-integer stack component configuration

A Terraform Stack component configuration that wraps the
[`random-integer` module](../../modules/random-integer) in a `component` block
and exposes the same interface as the module.

Publish this directory to the HCP Terraform private registry as a Stack
component configuration. Consuming stacks reference it with a `stack` block:

```hcl
stack "random_integer" {
  source  = "app.terraform.io/MY-ORG-NAME/random-integer"
  version = "~> 1.0"

  inputs = {
    min = 1
    max = 10
  }
}
```

## Inputs

| Name  | Description                                       | Type     | Default |
| ----- | ------------------------------------------------- | -------- | ------- |
| `min` | The minimum inclusive value of the integer range. | `number` | `1`     |
| `max` | The maximum inclusive value of the integer range. | `number` | `100`   |

## Outputs

| Name     | Description                   | Type     |
| -------- | ----------------------------- | -------- |
| `result` | The generated random integer. | `number` |

## Providers

This component configuration declares and configures its own `hashicorp/random`
provider. Consuming stacks do not need to pass any providers.
