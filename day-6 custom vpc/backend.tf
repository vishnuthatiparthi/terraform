terraform {
  backend "s3" {
    bucket = "tombayya-1"
    key    = "day-6/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
    #dynamodb_table = "dynamo"
  }
}