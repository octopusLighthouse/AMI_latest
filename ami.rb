data "aws_ami" "amazon_linux_2" {
    owners = ["137112412989"]
    most_recent = true
    filter {
        name = "name"
        values = ["al2023-ami-*-kernel-6.1-x86_64"]
    }
}

output "founded_ubuntu_ami_value" {
  value = data.aws_ami.amazon_linux_2.id
}
