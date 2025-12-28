variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    # databases
    default = ["mongodb", "redis", "mysql", "rabbitmq",
    # backend
    "catalogue" , "user" , "cart" ,"shipping" , "payment",
    # frontend
    "frontend",
     # bastion
    "bastion",
    # frontend load balancer
    "frontend_alb",
    # Backend ALB
    "backend_alb",
    "open_vpn"
    ]
   
}

variable "zone_id" {
    default = "Z0462684FV5U34P7ASOD"
}

variable "domain_name" {
    default = "dawsjakkam.fun"
}


  
