locals {
  kubeconfig = templatefile(
    "${path.module}/templates/kubeconfig.tpl",
    {
      "port"         = var.port
      "cluster_name" = var.cluster_name
      "role_arn"     = var.role_arn
      "region"       = var.region
    }
  )
  url = split("https://", data.aws_eks_cluster.this.endpoint)[1]
}

data "aws_eks_cluster" "this" {
  name = var.cluster_name
}

