resource "google_compute_instance" "test" {
  name         = "${var.compute_instance_name}"
  machine_type = var.machine_type
  zone         = var.region

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python-pip rsync; pip install flask; pip install tweepy; pip install --upgrade google-cloud-pubsub "

  //vpc
  network_interface {
    network = "default"

    access_config {
    }
  }

  service_account {
    scopes = ["pubsub"]
  }
}