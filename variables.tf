# -----------------------------------------------------------------------------
# Variables: Common AWS Provider - Autoloaded from Terragrunt
# -----------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars."
  type        = string
  default     = ""
}

variable "aws_account_id" {
  description = "The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars"
  type        = string
  default     = ""
}

variable "aws_assume_role_arn" {
  description = "(Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars."
  type        = string
  default     = ""
}

variable "aws_assume_role_session_name" {
  description = "(Optional) - The session name to use when making the AssumeRole call."
  type        = string
  default     = ""
}

variable "aws_assume_role_external_id" {
  description = "(Optional) - The external ID to use when making the AssumeRole call."
  type        = string
  default     = ""
}

# -----------------------------------------------------------------------------
# Variables: TF-MOD-AWS-ENDPOINTS
# -----------------------------------------------------------------------------

variable "enabled" {
  description = "(Optional). A Switch that decides whether to create a terraform resource or run a provisioner. Default is true"
  type        = bool
  default     = true
}

variable "vpc_id" {
  type        = string
  description = "VPC ID where subnets will be created (e.g. `vpc-aceb2723`)"
}

variable "public_route_table_ids" {
  description = "IDs of the created public route tables"
  type        = list(string)
  default     = []
}

variable "private_route_table_ids" {
  description = "IDs of the created private route tables"
  type        = list(string)
  default     = []
}

variable "public_subnet_ids" {
  description = "List of public subnets within the region VPC"
  type        = list(string)
  default     = []
}

variable "private_subnet_ids" {
  description = "List of prviate subnets within the region VPC"
  type        = list(string)
  default     = []
}

variable "igw_id" {
  type        = string
  description = "Internet Gateway ID the public route table will point to (e.g. `igw-9c26a123`)"
}

variable "enable_dynamodb_endpoint" {
  description = "Should be true if you want to provision a DynamoDB endpoint to the VPC"
  type        = bool
  default     = false
}

variable "enable_s3_endpoint" {
  description = "Should be true if you want to provision an S3 endpoint to the VPC"
  type        = bool
  default     = false
}

variable "enable_codebuild_endpoint" {
  description = "Should be true if you want to provision an Codebuild endpoint to the VPC"
  default     = false
}

variable "codebuild_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Codebuild endpoint"
  default     = []
}

variable "codebuild_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Codebuilt endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  default     = []
}

variable "codebuild_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Codebuild endpoint"
  default     = false
}

variable "enable_codecommit_endpoint" {
  description = "Should be true if you want to provision an Codecommit endpoint to the VPC"
  default     = false
}

variable "codecommit_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Codecommit endpoint"
  default     = []
}

variable "codecommit_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Codecommit endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  default     = []
}

variable "codecommit_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Codecommit endpoint"
  default     = false
}

variable "enable_git_codecommit_endpoint" {
  description = "Should be true if you want to provision an Git Codecommit endpoint to the VPC"
  default     = false
}

variable "git_codecommit_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Git Codecommit endpoint"
  default     = []
}

variable "git_codecommit_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Git Codecommit endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  default     = []
}

variable "git_codecommit_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Git Codecommit endpoint"
  default     = false
}

variable "enable_config_endpoint" {
  description = "Should be true if you want to provision an config endpoint to the VPC"
  default     = false
}

variable "config_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for config endpoint"
  default     = []
}

variable "config_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for config endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  default     = []
}

variable "config_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for config endpoint"
  default     = false
}

variable "enable_sqs_endpoint" {
  description = "Should be true if you want to provision an SQS endpoint to the VPC"
  default     = false
}

variable "sqs_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for SQS endpoint"
  default     = []
}

variable "sqs_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for SQS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  default     = []
}

variable "sqs_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for SQS endpoint"
  default     = false
}

variable "enable_ssm_endpoint" {
  description = "Should be true if you want to provision an SSM endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ssm_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for SSM endpoint"
  type        = list(string)
  default     = []
}

variable "ssm_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for SSM endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "ssm_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for SSM endpoint"
  type        = bool
  default     = false
}

variable "enable_secretsmanager_endpoint" {
  description = "Should be true if you want to provision an Secrets Manager endpoint to the VPC"
  type        = bool
  default     = false
}

variable "secretsmanager_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Secrets Manager endpoint"
  type        = list(string)
  default     = []
}

variable "secretsmanager_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Secrets Manager endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "secretsmanager_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Secrets Manager endpoint"
  type        = bool
  default     = false
}

variable "enable_apigw_endpoint" {
  description = "Should be true if you want to provision an api gateway endpoint to the VPC"
  type        = bool
  default     = false
}

variable "apigw_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for API GW  endpoint"
  type        = list(string)
  default     = []
}

variable "apigw_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for API GW endpoint"
  type        = bool
  default     = false
}

variable "apigw_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for API GW endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "enable_ssmmessages_endpoint" {
  description = "Should be true if you want to provision a SSMMESSAGES endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ssmmessages_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for SSMMESSAGES endpoint"
  type        = list(string)
  default     = []
}

variable "ssmmessages_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for SSMMESSAGES endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "ssmmessages_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for SSMMESSAGES endpoint"
  type        = bool
  default     = false
}

variable "enable_transferserver_endpoint" {
  description = "Should be true if you want to provision a Transfer Server endpoint to the VPC"
  type        = bool
  default     = false
}

variable "transferserver_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Transfer Server endpoint"
  type        = list(string)
  default     = []
}

variable "transferserver_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Transfer Server endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "transferserver_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Transfer Server endpoint"
  type        = bool
  default     = false
}


variable "enable_ec2_endpoint" {
  description = "Should be true if you want to provision an EC2 endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ec2_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for EC2 endpoint"
  type        = list(string)
  default     = []
}

variable "ec2_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for EC2 endpoint"
  type        = bool
  default     = false
}

variable "ec2_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for EC2 endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "enable_ec2messages_endpoint" {
  description = "Should be true if you want to provision an EC2MESSAGES endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ec2messages_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for EC2MESSAGES endpoint"
  type        = list(string)
  default     = []
}

variable "ec2messages_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for EC2MESSAGES endpoint"
  type        = bool
  default     = false
}

variable "ec2messages_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for EC2MESSAGES endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "enable_ecr_api_endpoint" {
  description = "Should be true if you want to provision an ecr api endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ecr_api_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for ECR api endpoint. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "ecr_api_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for ECR API endpoint"
  type        = bool
  default     = false
}

variable "ecr_api_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for ECR API endpoint"
  type        = list(string)
  default     = []
}

variable "enable_ecr_dkr_endpoint" {
  description = "Should be true if you want to provision an ecr dkr endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ecr_dkr_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for ECR dkr endpoint. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "ecr_dkr_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for ECR DKR endpoint"
  type        = bool
  default     = false
}

variable "ecr_dkr_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for ECR DKR endpoint"
  type        = list(string)
  default     = []
}

variable "enable_kms_endpoint" {
  description = "Should be true if you want to provision a KMS endpoint to the VPC"
  type        = bool
  default     = false
}

variable "kms_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for KMS endpoint"
  type        = list(string)
  default     = []
}

variable "kms_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for KMS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "kms_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for KMS endpoint"
  type        = bool
  default     = false
}

variable "enable_ecs_endpoint" {
  description = "Should be true if you want to provision a ECS endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ecs_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for ECS endpoint"
  type        = list(string)
  default     = []
}

variable "ecs_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for ECS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "ecs_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for ECS endpoint"
  type        = bool
  default     = false
}

variable "enable_ecs_agent_endpoint" {
  description = "Should be true if you want to provision a ECS Agent endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ecs_agent_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for ECS Agent endpoint"
  type        = list(string)
  default     = []
}

variable "ecs_agent_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for ECS Agent endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "ecs_agent_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for ECS Agent endpoint"
  type        = bool
  default     = false
}

variable "enable_ecs_telemetry_endpoint" {
  description = "Should be true if you want to provision a ECS Telemetry endpoint to the VPC"
  type        = bool
  default     = false
}

variable "ecs_telemetry_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for ECS Telemetry endpoint"
  type        = list(string)
  default     = []
}

variable "ecs_telemetry_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for ECS Telemetry endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "ecs_telemetry_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for ECS Telemetry endpoint"
  type        = bool
  default     = false
}

variable "enable_sns_endpoint" {
  description = "Should be true if you want to provision a SNS endpoint to the VPC"
  type        = bool
  default     = false
}

variable "sns_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for SNS endpoint"
  type        = list(string)
  default     = []
}

variable "sns_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for SNS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "sns_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for SNS endpoint"
  type        = bool
  default     = false
}

variable "enable_monitoring_endpoint" {
  description = "Should be true if you want to provision a CloudWatch Monitoring endpoint to the VPC"
  type        = bool
  default     = false
}

variable "monitoring_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for CloudWatch Monitoring endpoint"
  type        = list(string)
  default     = []
}

variable "monitoring_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for CloudWatch Monitoring endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "monitoring_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for CloudWatch Monitoring endpoint"
  type        = bool
  default     = false
}

variable "enable_elasticloadbalancing_endpoint" {
  description = "Should be true if you want to provision a Elastic Load Balancing endpoint to the VPC"
  type        = bool
  default     = false
}

variable "elasticloadbalancing_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Elastic Load Balancing endpoint"
  type        = list(string)
  default     = []
}

variable "elasticloadbalancing_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Elastic Load Balancing endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "elasticloadbalancing_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Elastic Load Balancing endpoint"
  type        = bool
  default     = false
}

variable "enable_events_endpoint" {
  description = "Should be true if you want to provision a CloudWatch Events endpoint to the VPC"
  type        = bool
  default     = false
}

variable "events_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for CloudWatch Events endpoint"
  type        = list(string)
  default     = []
}

variable "events_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for CloudWatch Events endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "events_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for CloudWatch Events endpoint"
  type        = bool
  default     = false
}

variable "enable_logs_endpoint" {
  description = "Should be true if you want to provision a CloudWatch Logs endpoint to the VPC"
  type        = bool
  default     = false
}

variable "logs_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for CloudWatch Logs endpoint"
  type        = list(string)
  default     = []
}

variable "logs_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for CloudWatch Logs endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "logs_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for CloudWatch Logs endpoint"
  type        = bool
  default     = false
}

variable "enable_cloudtrail_endpoint" {
  description = "Should be true if you want to provision a CloudTrail endpoint to the VPC"
  type        = bool
  default     = false
}

variable "cloudtrail_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for CloudTrail endpoint"
  type        = list(string)
  default     = []
}

variable "cloudtrail_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for CloudTrail endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "cloudtrail_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for CloudTrail endpoint"
  type        = bool
  default     = false
}

variable "enable_kinesis_streams_endpoint" {
  description = "Should be true if you want to provision a Kinesis Streams endpoint to the VPC"
  type        = bool
  default     = false
}

variable "kinesis_streams_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Kinesis Streams endpoint"
  type        = list(string)
  default     = []
}

variable "kinesis_streams_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Kinesis Streams endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "kinesis_streams_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Kinesis Streams endpoint"
  type        = bool
  default     = false
}

variable "enable_kinesis_firehose_endpoint" {
  description = "Should be true if you want to provision a Kinesis Firehose endpoint to the VPC"
  type        = bool
  default     = false
}

variable "kinesis_firehose_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Kinesis Firehose endpoint"
  type        = list(string)
  default     = []
}

variable "kinesis_firehose_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Kinesis Firehose endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "kinesis_firehose_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Kinesis Firehose endpoint"
  type        = bool
  default     = false
}

variable "enable_glue_endpoint" {
  description = "Should be true if you want to provision a Glue endpoint to the VPC"
  type        = bool
  default     = false
}

variable "glue_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Glue endpoint"
  type        = list(string)
  default     = []
}

variable "glue_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Glue endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "glue_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Glue endpoint"
  type        = bool
  default     = false
}

variable "enable_sagemaker_notebook_endpoint" {
  description = "Should be true if you want to provision a Sagemaker Notebook endpoint to the VPC"
  type        = bool
  default     = false
}

variable "sagemaker_notebook_endpoint_region" {
  description = "Region to use for Sagemaker Notebook endpoint"
  type        = string
  default     = ""
}

variable "sagemaker_notebook_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Sagemaker Notebook endpoint"
  type        = list(string)
  default     = []
}

variable "sagemaker_notebook_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Sagemaker Notebook endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "sagemaker_notebook_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Sagemaker Notebook endpoint"
  type        = bool
  default     = false
}

variable "enable_sts_endpoint" {
  description = "Should be true if you want to provision a STS endpoint to the VPC"
  type        = bool
  default     = false
}

variable "sts_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for STS endpoint"
  type        = list(string)
  default     = []
}

variable "sts_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for STS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "sts_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for STS endpoint"
  type        = bool
  default     = false
}

variable "enable_cloudformation_endpoint" {
  description = "Should be true if you want to provision a Cloudformation endpoint to the VPC"
  type        = bool
  default     = false
}

variable "cloudformation_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Cloudformation endpoint"
  type        = list(string)
  default     = []
}

variable "cloudformation_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Cloudformation endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "cloudformation_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Cloudformation endpoint"
  type        = bool
  default     = false
}
variable "enable_codepipeline_endpoint" {
  description = "Should be true if you want to provision a CodePipeline endpoint to the VPC"
  type        = bool
  default     = false
}

variable "codepipeline_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for CodePipeline endpoint"
  type        = list(string)
  default     = []
}

variable "codepipeline_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for CodePipeline endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "codepipeline_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for CodePipeline endpoint"
  type        = bool
  default     = false
}
variable "enable_appmesh_envoy_management_endpoint" {
  description = "Should be true if you want to provision a AppMesh endpoint to the VPC"
  type        = bool
  default     = false
}

variable "appmesh_envoy_management_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for AppMesh endpoint"
  type        = list(string)
  default     = []
}

variable "appmesh_envoy_management_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for AppMesh endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "appmesh_envoy_management_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for AppMesh endpoint"
  type        = bool
  default     = false
}
variable "enable_servicecatalog_endpoint" {
  description = "Should be true if you want to provision a Service Catalog endpoint to the VPC"
  type        = bool
  default     = false
}

variable "servicecatalog_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Service Catalog endpoint"
  type        = list(string)
  default     = []
}

variable "servicecatalog_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Service Catalog endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "servicecatalog_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Service Catalog endpoint"
  type        = bool
  default     = false
}
variable "enable_storagegateway_endpoint" {
  description = "Should be true if you want to provision a Storage Gateway endpoint to the VPC"
  type        = bool
  default     = false
}

variable "storagegateway_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Storage Gateway endpoint"
  type        = list(string)
  default     = []
}

variable "storagegateway_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Storage Gateway endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "storagegateway_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Storage Gateway endpoint"
  type        = bool
  default     = false
}
variable "enable_transfer_endpoint" {
  description = "Should be true if you want to provision a Transfer endpoint to the VPC"
  type        = bool
  default     = false
}

variable "transfer_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Transfer endpoint"
  type        = list(string)
  default     = []
}

variable "transfer_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Transfer endpoint. Only a single subnet within an AZ is supported. Ifomitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "transfer_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Transfer endpoint"
  type        = bool
  default     = false
}
variable "enable_sagemaker_api_endpoint" {
  description = "Should be true if you want to provision a SageMaker API endpoint to the VPC"
  type        = bool
  default     = false
}

variable "sagemaker_api_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for SageMaker API endpoint"
  type        = list(string)
  default     = []
}

variable "sagemaker_api_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for SageMaker API endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "sagemaker_api_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for SageMaker API endpoint"
  type        = bool
  default     = false
}
variable "enable_sagemaker_runtime_endpoint" {
  description = "Should be true if you want to provision a SageMaker Runtime endpoint to the VPC"
  type        = bool
  default     = false
}

variable "sagemaker_runtime_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for SageMaker Runtime endpoint"
  type        = list(string)
  default     = []
}

variable "sagemaker_runtime_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for SageMaker Runtime endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "sagemaker_runtime_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for SageMaker Runtime endpoint"
  type        = bool
  default     = false
}

variable "enable_appstream_endpoint" {
  description = "Should be true if you want to provision a AppStream endpoint to the VPC"
  type        = bool
  default     = false
}

variable "appstream_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for AppStream endpoint"
  type        = list(string)
  default     = []
}

variable "appstream_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for AppStream endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "appstream_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for AppStream endpoint"
  type        = bool
  default     = false
}

variable "enable_athena_endpoint" {
  description = "Should be true if you want to provision a Athena endpoint to the VPC"
  type        = bool
  default     = false
}

variable "athena_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Athena endpoint"
  type        = list(string)
  default     = []
}

variable "athena_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Athena endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "athena_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Athena endpoint"
  type        = bool
  default     = false
}

variable "enable_rekognition_endpoint" {
  description = "Should be true if you want to provision a Rekognition endpoint to the VPC"
  type        = bool
  default     = false
}

variable "rekognition_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Rekognition endpoint"
  type        = list(string)
  default     = []
}

variable "rekognition_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Rekognition endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "rekognition_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Rekognition endpoint"
  type        = bool
  default     = false
}

variable "enable_efs_endpoint" {
  description = "Should be true if you want to provision an EFS endpoint to the VPC"
  type        = bool
  default     = false
}

variable "efs_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for EFS endpoint"
  type        = list(string)
  default     = []
}

variable "efs_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for EFS endpoint. Only a single subnet within an AZ is supported. Ifomitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "efs_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for EFS endpoint"
  type        = bool
  default     = false
}

variable "enable_cloud_directory_endpoint" {
  description = "Should be true if you want to provision an Cloud Directory endpoint to the VPC"
  type        = bool
  default     = false
}

variable "cloud_directory_endpoint_security_group_ids" {
  description = "The ID of one or more security groups to associate with the network interface for Cloud Directory endpoint"
  type        = list(string)
  default     = []
}

variable "cloud_directory_endpoint_subnet_ids" {
  description = "The ID of one or more subnets in which to create a network interface for Cloud Directory endpoint. Only a single subnet within an AZ is supported. Ifomitted, private subnets will be used."
  type        = list(string)
  default     = []
}

variable "cloud_directory_endpoint_private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC for Cloud Directory endpoint"
  type        = bool
  default     = false
}

# -----------------------------------------------------------------------------
# Variables: TF-MOD-LABEL
# -----------------------------------------------------------------------------

variable "namespace" {
  type        = string
  default     = ""
  description = "(Optional) - Namespace, which could be your abbreviated product team, e.g. 'rci', 'mi', 'hp', or 'core'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "(Optional) - Environment, e.g. 'dev', 'qa', 'staging', 'prod'"
}

variable "name" {
  type        = string
  default     = ""
  description = "(Optional) - Solution name, e.g. 'vault', 'consul', 'keycloak', 'k8s', or 'baseline'"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "(Optional) - Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "(Optional) - Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) - Additional tags"
}