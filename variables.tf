variable project_id {
  type    = string
  default = "experimental-4567"
}

variable gke_project_name {
  type    = string
  default = "vvp-platform"
}

variable gke_node_pool_name {
  type    = string
  default = "vvp-platform-nodes"
}

variable gke_machine_type {
  type    = string
  default = "n1-standard-2"
}

variable gke_init_node_count {
  type    = number
  default = 11
}

variable gke_min_nodes {
  type    = number
  default = 5
}


variable gke_max_nodes {
  type    = number
  default = 30
}

variable gke_image_type {
  type    = string
  default = "COS"
  description = "Container Optimized OS"
}

variable gke_service_acccount {
  type    = string
  default = ""
}

variable gke_preemptible_nodes{
  type    = bool
  default = false
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