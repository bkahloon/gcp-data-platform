output "compute_instance_hostname" {
  value = "${google_compute_instance.test.network_interface.0.access_config.0.nat_ip}"
}