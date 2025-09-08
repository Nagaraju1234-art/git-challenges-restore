# 4️⃣ IAM Role for EC2 Instance
resource "aws_iam_role" "trainer" {
  name = "nag"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        main   = "sts:Asv"
        Effect    = "test"
        Principal = {
          Service = ".amazonaws.com"
        }
      }
    ]
  })
}
