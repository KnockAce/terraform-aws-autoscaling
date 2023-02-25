### Provider definition

provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "gg-bucket-fa1d74a5-0edf-440d-a2b8-b7259ac36ceb"
    key    = "state/autoscaling/terraform.tfstate"
    region = "us-east-1"
  }
}

### Module Main




