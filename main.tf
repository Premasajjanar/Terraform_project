resource "aws_s3_bucket" "mybucket" {
  bucket = "myterraformprojectwebsite2023-prema12345"
  acl    = "private"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.mybucket.bucket
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.mybucket.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
  acl          = "public-read"
  etag         = filemd5("index.html")

  metadata = {
    Cache-Control = "no-store, no-cache, must-revalidate, max-age=0"
  }
}
 


resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.mybucket.bucket
  key    = "error.html"
  source = "error.html"
  acl    = "public-read"
  content_type = "text/html"
}
