variable "cidr"{
    type = string 
    default = "10.0.0.0/16"
}

variable "dns_hostnames"{
    type = bool
    default = true
}