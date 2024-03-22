
#Module call
module "CORE-INFO" {
  source="./MODULES/CORE-INFO"
  required_tags={
    Environment=var.environment,
    OwnerEmail=var.OwnerEmail,
    System=var.system,
    Backup=var.backup,
    Region=var.AWS_REGION
  }
}

module "EC2-BASE" {
  source = "./MODULES/EC2-BASE"
  ami_id = data.aws_ami.stack_ami.id
  stack_controls = var.stack_controls
  EC2_Components = var.EC2_Components
  subnet_ids     = var.subnet_ids
}


 

