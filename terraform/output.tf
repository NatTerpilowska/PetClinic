output "client_certificate" {
  value = module.k8s-cluster.client_certificate
}

output "kube_config" {
  value = module.k8s-cluster.kube_config

  sensitive = true
}