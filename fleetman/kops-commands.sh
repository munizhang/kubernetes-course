export AWS_SECRET_ACCESS_KEY= $(aws configure get aws_secret_access_key)
export AWS_ACCESS_KEY= $(aws configure get aws_access_key)
aws ec2 describe-availability-zones --region us-east-2
ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa
kops create secret --name ${NAME} sshpublickey admin -i ~/.ssh/id_rsa.pub
kops create cluster --zones us-east-2a,us-east-2b,us-east-2c ${NAME}
kops edit cluster ${NAME}
# ig - instance groups, min nodes and max nodes, aws auto scaling group
kops edit ig nodes --name ${NAME} 
kops get ig --name ${NAME} ## verify the instance groups
kops update cluster --name ${NAME}
kops validate cluster
kubectl logs <pod-name>