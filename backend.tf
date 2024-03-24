/**********************************************************
  # Configure S3 Backend
**********************************************************/

terraform {
  backend "s3" {
    bucket         = "terraform-general-infrastucture-holder"
    key            = "terraform-general-infrastucture-holder.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-general-infrastucture-holder"
  }
}