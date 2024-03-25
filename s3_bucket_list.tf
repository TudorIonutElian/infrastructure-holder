/***********************************
 ***** AWS S3 Bucket Resources *****
 ***********************************/
resource "aws_s3_bucket" "s3buckets" {
  for_each = toset(var.s3_bucket_list)
  bucket   = each.value
}
/***********************************
 ***** AWS S3 Bucket Resources *****
 ***********************************/
resource "aws_s3_bucket" "s3buckets" {
  for_each = toset(var.s3_bucket_list)
  bucket   = each.value
}
