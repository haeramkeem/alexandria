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

data "aws_iam_policy_document" "example_bucket_policy_doc" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.example_bucket.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.example_cloudfront_oai.iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "example_bucket_policy" {
  bucket = aws_s3_bucket.example_bucket.id
  policy = data.aws_iam_policy_document.example_bucket_policy_doc.json
}
