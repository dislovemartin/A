output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
} 
terraform { 
  cloud { 
    
    organization = "soln_ai" 

    workspaces { 
      name = "AI" 
    } 
  } 
}