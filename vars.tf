variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}


variable "environment" {
  default = "dev"
}

variable "default_vpc_id" {
  default = "vpc-0314b594071820f93"
}

variable "system" {
  default = "Retail Reporting"
}

variable "subsystem" {
  default = "CliXX"
}

variable "availability_zone" {
  default = "us-east-1c"
}

variable "subnets_cidrs" {
  type = list(string)
  default = [
    "172.31.80.0/20"
  ]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "my_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "my_key.pub"
}

variable "OwnerEmail" {
  default = "yinka.oshe@gmail.com"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-stack-1.0"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "subnet" {
  default = "subnet-0118adf2e28d1cf9e"
}

variable "subnet_ids" {
  type = list(string)
  default = [
    "subnet-00388ccf3f2635ce3",
    "subnet-0118adf2e28d1cf9e",
    "subnet-06bceb5fce7a2a9f4",
    "subnet-06e7410fa755a9034",
    "subnet-0973dd7b03c27b164",
    "subnet-0ec40ac9f1de95a4b",
    "subnet-0f45f2f34a12af6d1"
    ]
}

variable "stack_controls" {
  type = map(string)
  default = {
    ec2_create = "Y"
    rds_create = "Y"    
  }
}

variable "EC2_Components" {
  type = map(string)
  default = {
    volume_type           = "gp2"
    volume_size           = 30
    delete_on_termination = true
    encrypted             = "true" 
    instance_type         = "t2.micro"
  }
}

variable "backup" {
  default = "yes"
}