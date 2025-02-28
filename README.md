# Private EKS Cluster using Terraform
## Prerequisites
- Terraform >= 1.3.0
- AWS CLI configured with appropriate IAM permissions
## Setup
1. Clone the repository
2. Modify `terraform.tfvars` with your values
3. Run Terraform commands:
   ```sh
   terraform init
   terraform plan
   terraform apply -auto-approve
   ```
4. Verify the cluster:
   ```sh
   aws eks --region ap-south-1 update-kubeconfig --name private-eks-cluster
