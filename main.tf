resource "null_resource" "test" {}

   


# variable "pet_words" {
#   default     = 10
#   description = "Number of words per pet"
# }
# variable "pets_count" {
#   default     = 2500
#   description = "Count of pets"
# }
# variable "string_length" {
#   default = 512
# }
# 
# resource "random_pet" "ourhoard" {
#   count  = var.pets_count
#   length = var.pet_words
#   keepers = {
#     # Generate a new pet name each time the time changes
#     make_on_every_apply = timestamp()
#   }
# }