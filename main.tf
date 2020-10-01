resource "digitalocean_kubernetes_cluster" "k8s" {
  name         = "k8s"
  region       = "lon1"
  version      = "1.18.8-do.0"
  auto_upgrade = false

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 3
    auto_scale = false
  }
}
