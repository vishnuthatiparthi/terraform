terraform {
  backend "s3" {
    bucket = "simonjack"
    key    = "terraform.state"
    region = "ap-south-1"
  }
}
