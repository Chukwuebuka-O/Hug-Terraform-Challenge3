resource "aws_vpc" "hug_terraform_prjct3_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "hug_terraform_prjct3_public_subnet" {
  vpc_id                  = aws_vpc.hug_terraform_prjct3_vpc.id
  cidr_block              = var.public_subnet
  availability_zone       = var.aws_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet"
  }
}

resource "aws_subnet" "hug_terraform_prjct3_private_subnet" {
  vpc_id                  = aws_vpc.hug_terraform_prjct3_vpc.id
  cidr_block              = var.private_subnet
  availability_zone       = var.aws_availability_zone
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-subnet"
  }
}


resource "aws_subnet" "hug_terraform_prjct3_private_subnet_b" {
  vpc_id                  = aws_vpc.hug_terraform_prjct3_vpc.id
  cidr_block              = var.private_subnet_b
  availability_zone       = var.aws_availability_zone_b
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-subnet-b"
  }
}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.hug_terraform_prjct3_vpc.id

  tags = {
    Name = "${var.project_name}-igw"
  }
}


resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name = "${var.project_name}-nat-eip"
  }
}

resource "aws_nat_gateway" "main_nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.hug_terraform_prjct3_public_subnet.id

  tags = {
    Name = "${var.project_name}-nat-gw"
  }

  depends_on = [aws_internet_gateway.main_igw]
}

resource "aws_route_table" "public_route_tbl" {
  vpc_id = aws_vpc.hug_terraform_prjct3_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
  }

  tags = {
    Name = "${var.project_name}-public-rt"
  }
}

resource "aws_route_table" "private_route_tbl" {
  vpc_id = aws_vpc.hug_terraform_prjct3_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main_nat.id
  }

  tags = {
    Name = "${var.project_name}-private-rt"
  }
}

resource "aws_route_table_association" "public_route_tbl_assn" {
  subnet_id      = aws_subnet.hug_terraform_prjct3_public_subnet.id
  route_table_id = aws_route_table.public_route_tbl.id
}

resource "aws_route_table_association" "private_route_tbl_assn" {
  subnet_id      = aws_subnet.hug_terraform_prjct3_private_subnet.id
  route_table_id = aws_route_table.private_route_tbl.id
}

resource "aws_route_table_association" "private_route_tbl_b_assn" {
  subnet_id      = aws_subnet.hug_terraform_prjct3_private_subnet_b.id
  route_table_id = aws_route_table.private_route_tbl.id
}
