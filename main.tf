resource "aws_s3_bucket" "b" {
bucket = ""    
tags ={
    Name = "my bucket"
    Environment = "Dev"
}
}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}