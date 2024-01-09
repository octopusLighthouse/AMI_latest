data "aws_ami" "amazon_linux" {
    owners = ["137112412989"]
    most_recent = true
    filter {
        name = "name"
        values = ["al2023-ami-*-kernel-6.1-x86_64"]
    }
}

output "latest_amazon_linux_ami_id" {
  value = data.aws_ami.amazon_linux_2.id
}
