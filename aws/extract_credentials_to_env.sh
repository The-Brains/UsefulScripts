# Just put that in your profile and your AWS credential will be in your env variable.
aws_access_key_id=`cat ~/.aws/credentials | grep aws_access_key_id | cut -d'=' -f2 | sed 's/[^0-9A-Za-z]*//g'`
aws_secret_access_key=`cat ~/.aws/credentials | grep aws_secret_access_key | cut -d'=' -f2 | sed 's/[^0-9A-Za-z/+=]*//g'`
export AWS_ACCESS_KEY_ID=${aws_access_key_id}
export AWS_SECRET_ACCESS_KEY=${aws_secret_access_key}
