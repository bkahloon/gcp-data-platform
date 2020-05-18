module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  project_id                 = var.project_id
  name                       = var.gke_project_name
  region                     = "us-central1"
  zones                      = ["us-central1-a"]
  network                    = "default"
  subnetwork                 = "default"
  ip_range_pods              = ""
  ip_range_services          = ""
  http_load_balancing        = false
  horizontal_pod_autoscaling = true

  node_pools = [
    {
      name               = var.gke_node_pool_name
      machine_type       = var.gke_machine_type
      min_count          = var.gke_min_nodes
      max_count          = var.gke_max_nodes
      image_type         = var.gke_image_type
      auto_repair        = true
      auto_upgrade       = true
      preemptible        = var.gke_preemptible_nodes
      initial_node_count = var.gke_init_node_count
    },
  ]

  node_pools_labels = {
    all = {}

    vvp-platform-nodes = {
      vvp-platform-nodes=true
    }

    default-node-pool = {
      default-node-pool = true
    }
  }

  node_pools_metadata = {
    all = {}

    vvp-platform-nodes = {
      node-pool-metadata-custom-value="vvp-nodes-metadata"
    }

    default-node-pool = {
      node-pool-metadata-custom-value = "my-node-pool"
    }
  }

  node_pools_tags = {
    all = []
    vvp-platform-nodes = [
      "vvp-nodes-metadata"
    ]

    default-node-pool = [
      "default-node-pool",
    ]
  }
}