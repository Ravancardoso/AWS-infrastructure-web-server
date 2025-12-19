

# ---------------------------------------------------------------------------------------------------------------------
# AMAZON S3
# ---------------------------------------------------------------------------------------------------------------------

# Allows configuring public access block settings at the account level for Amazon S3.
resource "aws_s3_account_public_access_block" "block_account_public_access" {
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


#bucket state terraform

resource "aws_s3_bucket" "terraform-state-project-web-server-lab-ravan" {
  bucket = "terraform-state-project-web-server-lab-ravan"

  tags = merge(
    local.default_tags,
    local.environment_tags,
    {
      Name = "bucket-state-lab-server"
    }
  )
}

# versionament
resource "aws_s3_bucket_versioning" "terraform-state-project-web-server-lab-ravan_versioning" {
  bucket = aws_s3_bucket.terraform-state-project-web-server-lab-ravan.bucket

  versioning_configuration {
    status = "Suspended"
  }
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}