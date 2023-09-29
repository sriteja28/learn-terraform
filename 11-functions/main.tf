variable "class" {
  default = "devops"
}

## Print this in capital letters

output "class" {
  value = upper(var.class)
}

variable "fruits" {
  default = ["apple", "orange", "banana"]
}

output "fruit_count" {
  value = length(var.fruits)
}