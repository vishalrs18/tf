
output "vpcs" {
 value = aws_vpc.main.id
 sensitive = true
}
