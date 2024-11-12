provider "aws"{
    region = "us-east-1"
}

resource "aws_iam_user" "one"{
    name = var.iam_name
}

resource "aws_iam_group" "one"{
    name = var.iam_group
}

resource "aws_iam_group_policy_attachment" "one"{
    group = var.iam_group
    policy_arn = var.policy_arn
}

resource "aws_iam_user_group_membership" "one"{
    user = var.iam_name

    groups = [
        var.iam_group
    ]
}