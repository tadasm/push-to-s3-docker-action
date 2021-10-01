#!/bin/sh -l

echo "test env var"
echo "$AWS_ACCESS_KEY_ID"
#aws s3 sync --dryrun  --exclude "*.git*" . s3://resume.bofh.lt --region eu-west-1
echo $GITHUB_REPOSITORY
echo $GITHUB_WORKSPACE
#aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths '/*' --profile florian.ec --region eu-west-1
