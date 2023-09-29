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

variable "classes" {
  default = {
    devops = {
      name = "devops"
      topics = ["jenkins", "docker"]
    }
    aws = {
      name = "aws"
    }
  }
}

output "devops_topics" {
  value = var.classes["devops"]["topics"]
}


output "aws_topics" {
  value = lookup(lookup(var.classes, "aws",null), "topics","No topics so far")
}

output "fruit_0" {
  value = element(var.fruits, 4)
}