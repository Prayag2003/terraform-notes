// Resource to create a local file
// "local_file" represents the declaration of the resource type
// depends on the provider plugin where to create the resource

// Resource Type provides two bits on info:
// 1. Provider Name (before underscore) -> local provider
// 2. File Name (after underscore) -> type of resource

// Resource Name: pet (any logical name)

// Resource Arguments:
// filename: absolute path of the file to be created
// content: content to be written to the file

resource "local_file" "pet"{
    filename = "Terraform/root/terraform-local-file/pets.txt"
    content = "This is a pet file"
    file_permission = 0700
}

# resource "aws_instance" "webserver" {
#     ami = "ami-0c55b159cbfafe1f0"
#     instance_type = "t2.micro"
# }

# resource "aws_s3_bucket" "bucket" {
#     bucket = "my-unique-bucket"
# }

# resource "aws_s3_bucket_acl" "bucket_acl" {
#     bucket = aws_s3_bucket.bucket.id
#     acl    = "private"
# }