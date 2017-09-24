variable "region" {
  default = "us-east-1"
}
variable "AmiLinux" {
  type = "map"
  default = {
    us-east-1 = "ami-ae7bfdb8"
  }
}
variable "vpc-fullcidr" {
    default = "10.0.0.0/16"
  description = "the vpc cdir"
}
variable "Subnet-Public-AzA-CIDR" {
  default = "10.0.0.0/24"
  description = "the cidr of the subnet"
}
variable "key_name" {
  default = "stack"
  description = "the ssh key to use in the EC2 machines"
}
variable "master_ip" {
  default = "10.0.0.5"
}
variable "node1_ip" {
  default = "10.0.0.6"
}
variable "node2_ip" {
  default = "10.0.0.7"
}
variable "node3_ip" {
  default = "10.0.0.8"
}