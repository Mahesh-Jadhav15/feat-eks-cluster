resource "aws_eks_cluster" "eks" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = var.cluster_version
  vpc_config {
    subnet_ids              = var.private_subnets
    endpoint_private_access = true
    endpoint_public_access  = false
  }
  enabled_cluster_log_types = var.enable_control_plane_logging ? ["api", "audit", "authenticator", "controllerManager", "scheduler"] : []
  tags = var.tags
}
resource "aws_eks_node_group" "private_nodes" {
  cluster_name    = aws_eks_cluster.eks.name
  node_role_arn   = aws_iam_role.node_group_role.arn
  subnet_ids      = var.private_subnets
  instance_types  = var.node_instance_types
  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }
  tags = var.tags
}