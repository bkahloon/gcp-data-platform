resource "google_compute_instance" "test" {
  name         = "flask-vm-${var.compute_instance_name}"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python-pip rsync; pip install flask"

  //vpc
  network_interface {
    network = "default"

    access_config {
    }

  }
}