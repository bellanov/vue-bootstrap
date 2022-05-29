#!/bin/sh
#
# Deploy to Google Cloud Platform (GCP).

# GitHub
GITHUB_RELEASE_REPOSITORY=ghcr.io/bellanov/vue-bootstrap
VERSION=v1.1.0

# Dev / QA / Prod
DEV_RELEASE_REGISTRY=us-docker.pkg.dev/vue-bootstrap-dev/releases
QA_RELEASE_REGISTRY=us-docker.pkg.dev/vue-bootstrap-qa/releases
PROD_RELEASE_REGISTRY=us-docker.pkg.dev/vue-bootstrap-prod/releases

# Pull Release Image
# Pull from GitHub Artifact Repository
docker pull $GITHUB_RELEASE_REPOSITORY:$VERSION

# Tag Release Image
# Tag Release image for GCP's Artifact Repository
docker tag $GITHUB_RELEASE_REPOSITORY:$VERSION $DEV_RELEASE_REGISTRY/vue-bootstrap:$VERSION
docker tag $GITHUB_RELEASE_REPOSITORY:$VERSION $QA_RELEASE_REGISTRY/vue-bootstrap:$VERSION
docker tag $GITHUB_RELEASE_REPOSITORY:$VERSION $PROD_RELEASE_REGISTRY/vue-bootstrap:$VERSION

# Push to GCP
# Push container to GCP's Artifact Repository
docker push $DEV_RELEASE_REGISTRY/vue-bootstrap:$VERSION
docker push $QA_RELEASE_REGISTRY/vue-bootstrap:$VERSION
docker push $PROD_RELEASE_REGISTRY/vue-bootstrap:$VERSION

# Terraform
# Update terraform to point to the new version of the artifact.
