output "result" {
  description = "The generated random integer."
  type        = number
  value       = stack.random_integer.result
}
