aws_region           = "ap-south-1"
cluster_name         = "eks-cluster"
#eks cluster 1.27
cluster_version      = "1.27"
# VPC and Subnet Configuration
vpc_id              = "vpc-xxxxx"  # Replace with your actual VPC ID
private_subnets     = ["subnet-xxxxxxxxxxx", "subnet-yyyyyyyyyyy"] # Replace with your actual private subnet IDs

enable_control_plane_logging = true

# Node Group Configuration
node_instance_types = ["t3.medium"]
desired_size        = 2
min_size            = 1
max_size            = 3
tags = {
  Environment = "Dev"
  Project     = "EKS"
}