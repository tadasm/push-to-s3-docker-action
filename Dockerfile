# Container image that runs your code
FROM amazon/aws-cli

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

RUN ["/aws-s3-sync.sh"]

RUN ["/aws-cloudfront-cache-invalidate.sh"]
