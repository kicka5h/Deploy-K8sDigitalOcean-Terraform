variable "do_token" {
  
}

variable "region" {
  default = "sfo2"
}

variable "node_pool_size" {
    default = "s-1vcpu-512mb-10gb"
}

variable "k8s_clustername" {
  default = "starry-crawl"
}

variable "k8s_version" {
  default = "1.19.3-do.3"
}

variable "k8s_poolname" {
  default = "worker-pool"
}

variable "k8s_count" {
  default = "3"
}

variable "tags" {
    default = [
        "k8s",
        "lab"
    ]
}