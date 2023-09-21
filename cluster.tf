resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name    = var.k8s_clustername
  region  = var.region
  version = var.k8s_version

  tags = [
    "k8s",
    "lab"
  ]

  # This default node pool is mandatory
  node_pool {
    name       = var.k8s_poolname
    size       = var.node_pool_size
    auto_scale = false
    node_count = var.k8s_count
    tags       = [
      "k8s",
      "lab"
    ]
  }

}

output "cluster-id" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.id
}