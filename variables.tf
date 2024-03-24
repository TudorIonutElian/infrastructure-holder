/********************************************
/*** 	 Variable generated automatically with **
/*** 		 Params received 
 			 param 1: s3_bucket_list 
 			 param 2: list(string) 
 			 param 3: "lambda-deploy-example-terraform-bucket-state"
********************************************/
variable "s3_bucket_list" {
  type = list(string)
  default = [
    "lambda-deploy-example-terraform-bucket-state"
  ]
}
/********************************************
/*** 	 Variable generated automatically with **
/*** 		 Params received 
 			 param 1: dynamo_table_list 
 			 param 2: list(string) 
 			 param 3: "lambda-deploy-example-terraform-bucket-state"
********************************************/
variable "dynamo_table_list" {
  type = list(string)
  default = [
    "lambda-deploy-example-terraform-bucket-state"
  ]
}
