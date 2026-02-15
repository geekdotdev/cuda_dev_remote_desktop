output "Region" {
  description = "AWS region"
  value       = var.aws_region
}
output "InstancePublicIp" {
  description = "instance ip address"
  value	= resource.ec2Instance.public_linux.public_ip
}
output "InstancePublicDns" {
  description = "instance ip address"
  value	= resource.ec2Instance.public_linux.public_dns
}