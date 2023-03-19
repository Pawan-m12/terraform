module "create_sg" {
    source = "./modules/create_sg"
    sg_name = var.root_sg_name
}

module "create_pem" {
    source = "./modules/create_pem"
    key_name = var.root_key_name
    key_path = var.root_key_path
}

module "create_ec2" {
    
    source = "./modules/create_ec2"
    ami_id = var.root_ec2_ami
    ec2_type = var.root_ec2_type
    ec2_pem = module.create_pem.ec2_pem
    ec2_sg_id = module.create_sg.sg_id
}
module "create_s3" {
    source = "./modules/create_s3"
    bucket_name = var.root_bucket_name
}
module "create_dynamodb" {
    source = "./modules/create_dynamodb"
    dynamodb_name = var.root_dynamodb_name
    hash_key = var.root_dynamodb_key
}
