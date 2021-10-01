#!/bin/sh -l

echo "Hello $1"
aws s3 sync --dryrun  --exclude "*.git*" . s3://resume.bofh.lt --region eu-west-1
echo $GITHUB_REPOSITORY
echo $GITHUB_WORKSPACE
#aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths '/*' --profile florian.ec --region eu-west-1
