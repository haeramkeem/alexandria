resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket"

  tags = {
    Name = "example bucket"
  }
}

data "aws_iam_policy_document" "example_bucket_policy_doc" {
  statement {
    sid = "AddPerm"

    actions = [
      "s3:GetObject"
    ]

    resources = [
      "${aws_s3_bucket.example_bucket.arn}/*"
    ]

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}

resource "aws_s3_bucket_policy" "example_bucket_policy" {
  bucket = aws_s3_bucket.example_bucket.id
  policy = data.aws_iam_policy_document.example_bucket_policy_doc.json
}
