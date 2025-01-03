variable "ami" {
  description = "instering ami value"
  type        = string
  default     = ""

}

variable "type" {
  type    = string
  default = "t2.nano"

}
variable "key" {
  description = "inserting instance key value"
  type        = string
  default     = ""

}