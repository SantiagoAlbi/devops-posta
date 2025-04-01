variable "tf_state_bucket" {
  description = "Name of S3 Bucket in AWS for storing TF state"
  default     = "devops-recetas-app-tf-state-italiano"

}

variable "tf_state_lock_table" {
  description = "Name of the DynamoDB table for TF state locking"
  default     = "devops-recipi-app-tf-lock-ita"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "santialbi@example.com" #aqui va el mail real del responsable del proyecto
  #type = string
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}
