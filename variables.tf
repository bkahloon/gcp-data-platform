variable project_id {
  type    = string
  default = "experimental-4567"
}

variable region {
  type    = string
  default = "us-central1-a"
}

variable machine_type {
  type    = string
  default = "f1-micro"
}

variable compute_instance_name {
  type    = string
  default = "tweets"
}

variable pubsub_tweet_topic {
  type    = string
  default = "tweets"
}