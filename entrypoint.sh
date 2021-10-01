#!/bin/sh -l

echo "Hello $1"
aws s3 sync --dryrun  --exclude "*.git*" . s3://resume.bofh.lt
