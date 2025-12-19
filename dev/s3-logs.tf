# s3-logs.tf
resource "aws_s3_bucket" "logs" {
  bucket = "site-estatic-lab-udemy-ravan-logs"

  tags = merge(
    local.default_tags,
    local.environment_tags,
    { Name = "site-estatic-lab-udemy-ravan-logs" }
  )
}


#current

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket_policy" "logs_policy" {
  bucket = aws_s3_bucket.logs.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowS3Logging"
        Effect = "Allow"
        Principal = {
          Service = "logging.s3.amazonaws.com"
        }
        Action   = "s3:PutObject"
        Resource = "${aws_s3_bucket.logs.arn}/site-logs/*"
        Condition = {
          StringEquals = {
            "aws:SourceAccount" = data.aws_caller_identity.current.account_id
          }
        }
      }
    ]
  })
}



resource "aws_s3_bucket_logging" "site_logging" {
  bucket        = aws_s3_bucket.site.id
  target_bucket = aws_s3_bucket.logs.id
  target_prefix = "site-logs/"
}
