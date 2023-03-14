resource "aws_s3_bucket" "first_bucket" {
  bucket = "jhonata-remotestate-s3"

  versioning {
    enabled = true // versionamento
  }
}