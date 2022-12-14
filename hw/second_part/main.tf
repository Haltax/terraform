terraform {
        backend "gcs" {
                bucket = "bucket-tfstate-jakubstopa"
                prefix = "terraform/state"
        }
}


resource "google_compute_instance" "default" {
        count        = "${var.vm_count}"
        name         = "terra-zadanie-${count.index}"
        machine_type = "e2-medium"
        zone         = "${var.region}"

        boot_disk = {
                initialize_params {
                        size = "${var.vm_size}"
                        image = "debian-11-bullseye-v20220719 "
                }
        }
        network_interface {
                network = "default"
        }

        metadata_startup_script = "${file("ansible.sh")}"
}

resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = "${var.vm_ports}"
  }

  source_tags = ["web"]
}
