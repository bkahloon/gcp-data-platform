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

output "pubsub_tweets_output_id" {
  value = "${module.pubsub_tweets_ouput.id}"
}

output "pubsub_tweets_output_topic" {
  value = "${module.pubsub_tweets_ouput.topic}"
}

output "pubsub_tweets_output_uri" {
  value = "${module.pubsub_tweets_ouput.uri}"
}
