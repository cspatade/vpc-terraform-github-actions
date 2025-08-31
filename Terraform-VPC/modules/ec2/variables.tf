variable "sg_id" {

  type = string
}

variable "subnets" {
    type = list(string)
  
}

variable "ec2_names" {
  type = list(string)
  default = [ "webserver1","webserver2" ]
}