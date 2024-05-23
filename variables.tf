#tagging strategy

##project variable##
variable "project_name"{
    type = string 
    #default we are not giving becuase once it is publishes everyone wil have their own so forcing user to give name
}

variable "environment"{
    type = string
    default = "dev" #here it is also optional we can force user or we can give defult 
}

variable "common_tags"{
    type = map 
}


#vpc variables
variable "cidr"{
    type = string 
    default = "10.0.0.0/16"
}

variable "dns_hostnames"{
    type = bool
    default = true
}

variable "vpc_tags"{
    type = map 
    default = {}
}

#gw tags#

variable "igw_tags"{
    type = map 
    default = {}
}


#public subnet ##
variable "public_subnet_cidrs"{
    type = list 
    validation{
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "please provide 2 valid public subnet CIDR"
    }
}

variable "public_subnet_cidr_tags"{
    type = map 
    default = {}
}