variable "count_files" {
  default = 3
}

resource "random_string" "random" {
  length = 16
  special = true
  override_special = "/@$"
  count = var.count_files
}

resource "local_file" "task2" {
  count = var.count_files 
  content = templatefile("terra.tftpl", {port="8080", ip_addrs=["0.0.0.0", "0.0.0.10"]})
  filename = "${path.module}/backend-${element(random_string.random.*.hex, count.index)}"
  file_permission = 0640
}
