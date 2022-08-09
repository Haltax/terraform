variable "vm_size" {
  type    = number
  default = 10
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "vm_count" {
  type = number
  default = 1

}

variable "vm_ports" {
  type = list(number)
  default = [  80, 443 ]

}
