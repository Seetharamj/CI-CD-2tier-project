variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "AWS EC2 Key Pair"
  type        = string
}

variable "s3_bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}
