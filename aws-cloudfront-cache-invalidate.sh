#!/bin/sh

aws cloudfront create-invalidation --distribution-id E2T5JGOUKW2VL7 --paths '/*' --region eu-west-1
