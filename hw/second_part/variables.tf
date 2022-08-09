variable "image_id" {
  type    = string
  default = "debian-10-tf-2-2-1-v20201005 "
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "project" {
  type = string

variable "vm_count" {
  type = number
  default = 1

}

variable "vm_ports" {
  type = list(number)
  default = [  80, 443 ]

}
