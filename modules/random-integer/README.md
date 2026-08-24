# random-integer module

A minimal Terraform module that creates a single [`random_integer`](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) resource.

## Inputs

| Name  | Description                                       | Type     | Default |
| ----- | ------------------------------------------------- | -------- | ------- |
| `min` | The minimum inclusive value of the integer range. | `number` | `1`     |
| `max` | The maximum inclusive value of the integer range. | `number` | `100`   |

## Outputs

| Name     | Description                   |
| -------- | ----------------------------- |
| `result` | The generated random integer. |

## Usage

```hcl
module "random_integer" {
  source  = "app.terraform.io/MY-ORG-NAME/random-integer/random"
  version = "1.0.0"

  min = 1
  max = 10
}
```
