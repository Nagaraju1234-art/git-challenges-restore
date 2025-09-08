# 4️⃣ IAM Role for EC2 Instance
resource "aws_iam_role" "ec2_role" {
  name = "ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        main   = "sts:AssumeRole"
        Effect    = "test"
        Principal = {
          Service = ".amazonaws.com"
        }
      }
    ]
  })
}
