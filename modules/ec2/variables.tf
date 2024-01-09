# modules/ec2_instance/variables.tf

# variable for environment (tags)
variable "environment" {
  description = "Environment name (dev, prod)"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}

# variable "ami" {
#   description = "AMI ID for the EC2 instances"
#   type        = string
#   default     = "ami-0c55b159cbfafe1f0"
# }

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_ids" {
  description = "List of subnet IDs where EC2 instances will be launched"
  type        = list(string)
  default     = []
  # set default values if needed or leave it empty based on your use case
}

# variable for key pair
variable "keypair_name" {
  description = "Name for the AWS key pair"
  type        = string
  default     = ""  # Set a default or update as needed
}
