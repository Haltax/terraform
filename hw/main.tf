resource "google_storage_bucket" "default" {
	name = "bucket-tfstate-jakubstopa"
	force_destroy = false
	location = "US"
	storage_class = "STANDARD"
	versioning {
		enabled = true
	}
}
