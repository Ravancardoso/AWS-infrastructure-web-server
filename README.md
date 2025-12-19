## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.60.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.tf_locks](https://registry.terraform.io/providers/hashicorp/aws/4.60.0/docs/resources/dynamodb_table) | resource |
| [aws_s3_account_public_access_block.block_account_public_access](https://registry.terraform.io/providers/hashicorp/aws/4.60.0/docs/resources/s3_account_public_access_block) | resource |
| [aws_s3_bucket.terraform-state-project-web-server-lab-ravan](https://registry.terraform.io/providers/hashicorp/aws/4.60.0/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_versioning.terraform-state-project-web-server-lab-ravan_versioning](https://registry.terraform.io/providers/hashicorp/aws/4.60.0/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the S3 bucket | `string` | n/a | yes |

## Outputs

No outputs.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->