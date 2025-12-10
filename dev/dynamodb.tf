resource "aws_dynamodb_table" "tf_locks" {
  name         = "terraform-state-lock" # Pode manter esse nome ou mudar
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  tags = {
    Name        = "terraform-state-project-web-server-lab"
    Environment = "Dev"
    Owner       = "Ravan"
  }

  lifecycle {
    prevent_destroy = true
  }
}
