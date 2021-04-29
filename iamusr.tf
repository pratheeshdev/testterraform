resource "aws_iam_user" "myuser"{
  name="person.${count.index}"
  count=3
  path="/system/"
}
output "iamusernames" {
  value=aws_iam_user.myuser[*].name
}
output "iamarns"{
  value=aws_iam_user.myuser[*].arn
}
