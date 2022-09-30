# Contains the backend configuration

terraform {
  backend "s3" {
    bucket = "terraformbigproject"
    key    = "path/to/my/key"
    region = "us-east-1"
    # dynamodb_table = "terraform_project"
  }
}
