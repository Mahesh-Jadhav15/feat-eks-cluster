terraform {
  backend "s3" {
    bucket         = "private-eks"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
    #we can also add assume role here 
  }
}