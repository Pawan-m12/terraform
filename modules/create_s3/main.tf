
    resource "aws_s3_bucket" "s3_backend" {
bucket =  var.bucket_name   
    tags ={
        Name = "my bucket"
        Environment = "Dev"
    }   
 } 
resource "aws_s3_bucket" "s3_backend" {
    bucket = aws_s3_bucket.s3_backend.bucket
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm     = "AES256"
    }

}
  
resource "aws_s3_bucket_versioning" "s3_backend" {
    bucket = aws_s3_bucket.s3_backend.bucket

      versioning_configuration {
    status = "Enabled"
  }
} 