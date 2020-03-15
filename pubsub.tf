module "pubsub_tweets" {
  source  = "terraform-google-modules/pubsub/google"
  version = "~> 1.0"

  topic      = "${var.pubsub_tweet_topic}"
  project_id = "${var.project_id}"

}

module "pubsub_tweets_ouput" {
  source  = "terraform-google-modules/pubsub/google"
  version = "~> 1.0"

  topic      = "${var.pubsub_tweet_topic}_output"
  project_id = "${var.project_id}"

}

resource "google_pubsub_subscription" "dataflow" {
  name  = "dataflow-tweets-sub"
  topic = module.pubsub_tweets.topic


  # 20 minutes
  message_retention_duration = "1200s"
  retain_acked_messages      = true

  ack_deadline_seconds = 20


}