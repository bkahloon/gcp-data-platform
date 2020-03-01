output "compute_instance_hostname" {
  value = "${google_compute_instance.test.network_interface.0.access_config.0.nat_ip}"
}

output "pubsub_tweets_id" {
  value = "${module.pubsub_tweets.id}"
}

output "pubsub_tweets_topic" {
  value = "${module.pubsub_tweets.topic}"
}

output "pubsub_tweets_uri" {
  value = "${module.pubsub_tweets.uri}"
}
