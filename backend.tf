terraform {
  backend "s3" {
    bucket         = "mybranch"
    key            = "global/s3/terraform.tfstate"
    region         = "ca-central-1"
    dynamodb_table = "terraform-lock"
  }
}
