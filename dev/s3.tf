# s3-site.tf
resource "aws_s3_bucket" "site" {
  bucket = "site-estatic-lab-udemy-ravan"

  tags = merge(
    local.default_tags,
    local.environment_tags,
    { Name = "site-estatic-lab-udemy-ravan" }
  )
}