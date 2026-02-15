resource "aws_cloudformation_stack" "nice_dcv" {
  name = "nice-dcv-ubuntu"

  template_body = file("${path.module}/ubuntu-NICE-dcv.yaml")

  parameters = {
    ec2KeyPair    = var.ec2_key_pair
    instanceType  = var.ec2_instance_type
    vpcID         = aws_vpc.main.id
    subnetID      = aws_subnet.sub-pub1.id
    ingressIPv4   = var.user-cidr-ipv4
    listenPort    = var.dcv_listen_port
    sessionType   = var.dcv_session_type
    osVersion     = var.dcv_os_version
    volumeSize    = var.dcv_volume_size
    assignStaticIP       = "No"
    displayPublicIP      = "Yes"
    allowSSHport         = "Yes"
    installDocker        = "Yes"
    installWebmin        = "No"
    enableCloudFront     = "No"
    enableAGA            = "No"
    enableBackup         = "No"
    allowWebServerPorts  = "No"
    ec2TerminationProtection = "No"
  }

  capabilities = ["CAPABILITY_IAM"]

  tags = {
    Name = "nice-dcv-ubuntu"
  }
}

output "dcv_stack_outputs" {
  value = aws_cloudformation_stack.nice_dcv.outputs
}
