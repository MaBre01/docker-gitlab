#!/bin/bash

token=$1

if [ -z "$token" ]; then
    echo "Missing GitLab registration token";
    exit 1;
fi

if [ -z "$GITLAB_URL" ]; then
    echo "Missing GitLab url";
    exit 1;
fi

gitlab-runner register \
    --non-interactive \
    --registration-token $token \
    --locked=false \
    --description docker \
    --url $GITLAB_URL \
    --clone-url $GITLAB_URL \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-network-mode "gitlab_runners";

echo "GitLab registration successfull";
exit 0;