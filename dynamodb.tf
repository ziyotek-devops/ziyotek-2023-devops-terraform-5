# resource "aws_dynamodb_table" "backend_lock_table" {
#   name           = "terraform-lock"

#   read_capacity  = 20
#   write_capacity = 20
#   hash_key       = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }