resource "aws_ecr_repository" "app" {
  name = var.app_name

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = var.app_name
  }
}

resource "aws_ecr_repository" "midjourney" {
  name = "${var.app_name}-midjourney"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.app_name}-midjourney"
  }
}
