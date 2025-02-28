variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
}
variable "cluster_name" {
  description = "Name of the EKS cluster(private)"
  type        = string
}
variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}
variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}
variable "private_subnets" {
  description = "List of private subnets for EKS nodes"
  type        = list(string)
}
variable "enable_control_plane_logging" {
  description = "Enable or disable EKS control plane logging"
  type        = bool
  default     = true
}
variable "node_instance_types" {
  description = "List of instance types for worker nodes"
  type        = list(string)
}
variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}
variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}
variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}
variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
}