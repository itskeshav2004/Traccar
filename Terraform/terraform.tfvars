cidr_block        = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
mysql_cidr_block  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
availability_zone = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
subnet_name       = ["TraccarSubnetA", "TraccarSubnetB", "TraccarSubnetC"]
mysql_subnet_name = ["MySQLSubnetA", "MySQLSubnetB", "MySQLSubnetC"]
port              = [80, 443, 22, 8082]
db_sg_ports       = [3306, 22]
src_cidr          = ["0.0.0.0/0", "0.0.0.0/0", "13.233.177.0/24", "0.0.0.0/0"]