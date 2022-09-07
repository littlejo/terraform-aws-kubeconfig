local {
  kubeconfig = templatefile(
    "${path.module}/templates/kubeconfig.tpl",
    {
      "token" = nonsensitive(data.aws_eks_cluster_auth.this.token)
      "port"  = var.port
    }
  )
  url = split("https://", data.aws_eks_cluster.this.endpoint)[1]
}

data "aws_eks_cluster_auth" "this" {
  name = var.cluster_name
}

data "aws_eks_cluster" "this" {
  name = var.cluster_name
}

