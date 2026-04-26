output "bucket"{
value = aws_s3_bucket.newbucket.bucket
}

output "instance_id"{
value = aws_instance.ec2_server[*].id
}