
echo "IAM Users:"
aws iam list-users |grep UserName |awk '{print $2}' |tr '"' ' ' |tr ',' ' ' |tr -d " "



echo "Instances:"
aws ec2 describe-instances --region ca-central-1 |grep InstanceId |awk '{print $2}' |tr '"' " " |tr ',' ' ' |tr -d " "


echo "VPCS:"
aws ec2 describe-vpcs |grep Value |awk '{print $2}' |tr '"' ' ' |tr -d " "


echo "S3:"

echo "Subnets:"
aws ec2 describe-subnets |grep SubnetId |awk '{print $2}' |tr '"' ' ' |tr "," " " |tr -d " "