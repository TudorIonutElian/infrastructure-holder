function generateTerraformFile() {
    touch $1.tf
    echo -e "File $file_path created"
}

function generateTerraformContent() {
    case $1 in
        s3_bucket_list)
            echo -e "/***********************************" >> s3_bucket_list.tf
            echo -e " ***** AWS S3 Bucket Resources *****" >> s3_bucket_list.tf
            echo -e " ***********************************/" >> s3_bucket_list.tf

            echo -e "resource \"aws_s3_bucket\" \"s3buckets\" {" >> s3_bucket_list.tf
            echo -e "\t  for_each = toset(var.s3_bucket_list)\n  bucket = each.value" >> s3_bucket_list.tf
            echo -e "}" >> s3_bucket_list.tf
            ;;
        dynamo_table_list)
            echo -e "/*************************************" >> s3_bucket_list.tf
            echo -e " ***** AWS S3 DynamoDB Resources *****" >> s3_bucket_list.tf
            echo -e " *************************************/" >> s3_bucket_list.tf
            
            ;;
    esac
}