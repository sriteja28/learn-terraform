variable "sample" {
  default = 100
}

variable "sample1" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "sample-ext" {
  value = "Value of sample is ${var.sample}"
}

# variable data types
# 1. String
# 2. Number
# 3. Boolean

# variable types
# Ansible -- Plain key:value, List, Map/Dict
# Terraform -- Plain, List, Map/Dict

#Plain
variable "course" {
  default = "DevOps training"
}

#List
variable "courses" {
  default = [
  "DevOps",
   "AWS",
    "Python"
  ]
}

# Map
variable "course_info" {
  default = {
    DevOps = {
      name     = "DevOps"
      timing   = "9:30"
      duration = 90
    }
    AWS = {
      name     = "AWS"
      timing   = "10"
      duration = 10
    }
  }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses
}

output "course_details" {
  value = var.course_info
}
