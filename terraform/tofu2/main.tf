resource "aws_instance" "ec2_example" {
    ami = "ami-0305d0b03812a425e"
    instance_type = "t2.micro"
    tags = {
      Name = "EC2 Instance with remote state tag3"
    }
}

resource "awscc_s3_bucket" "example" {
  bucket_name = "my-simple-awscc-bucket-1234"
}