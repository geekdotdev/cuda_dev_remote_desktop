variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
}
variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Key from TF Cloud Workspace Env"
  type        = string
}
variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret from TF Cloud Workspace Env"
  type        = string
}
variable "ec2_key_pair" {
  description = "SSH Key"
  type = string
}
variable "instance_ami" {
  description = "AMI"
  type = string
}
variable "ec2_instance_type" {
  description = "instance type"
  type = string
}
variable "user-cidr-ipv4" {
  description = "CIDR block of users"
  type = string
}
variable "dcv_listen_port" {
  description = "NICE DCV server listen port"
  type        = number
  default     = 8443
}
variable "dcv_session_type" {
  description = "DCV session type: virtual, console, gpu-console, or gpu-virtual"
  type        = string
  default     = "virtual"
}
variable "dcv_os_version" {
  description = "Ubuntu OS version for DCV instance"
  type        = string
  default     = "Ubuntu 24.04 (arm64)"
}
variable "dcv_volume_size" {
  description = "EBS volume size in GiB"
  type        = number
  default     = 25
}