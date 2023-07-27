# Accepter's side of the connection.
resource "aws_vpc_peering_connection_accepter" "peer" {
  vpc_id        = aws_vpc.main.id
  peer_vpc_id   = "vpc-0031cc952da0c7bfc"
  auto_accept   = true

  tags = {
    Side = "Robot-${var.ENV}-default-vpc-peering"
  }
}