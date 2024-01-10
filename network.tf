resource "aws_vpc" "primary_network" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "ntier"
  }
}

resource "aws_subnet" "sub" {
  vpc_id     = aws_vpc.primary_network.id
  cidr_block = "10.10.0.0/24"
  tags = {
    Name = "web"
  }
  depends_on = [aws_vpc.primary_network]
}
resource "aws_subnet" "bussines" {
  vpc_id     = aws_vpc.primary_network.id
  cidr_block = "10.10.1.0/24"
  depends_on = [aws_vpc.primary_network]
}
resource "aws_subnet" "data" {
  vpc_id     = aws_vpc.primary_network.id
  cidr_block = "10.10.2.0/24"
  depends_on = [aws_vpc.primary_network]
}



