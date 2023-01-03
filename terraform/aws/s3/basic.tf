resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket"

  tags = {
    Name = "example bucket"
  }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.example_bucket.id
  acl    = "private"
}
