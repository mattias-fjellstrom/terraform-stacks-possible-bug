output "result" {
  description = "The generated random integer."
  type        = number
  value       = component.random_integer.result
}
