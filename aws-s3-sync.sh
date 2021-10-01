#!/bin/sh

aws s3 sync --exclude "*.git*" . s3://resume.bofh.lt --region eu-west-1
