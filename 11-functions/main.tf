variable "class" {
  default = "devops"
}

## Print this in capital letters

output "class" {
  value = upper(var.class)
}