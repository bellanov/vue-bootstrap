#!/bin/sh
#
# Deploy to Google Cloud Platform (GCP).

VERSION=v1.0.12

# Pull Release Image
# Pull from GitHub Artifact Repository
docker pull ghcr.io/bellanov/vue-bootstrap:$VERSION

# Tag Release Image
# Tag Release image for GCP's Artifact Repository
docker tag vue-bootstrap:v1.0.0 gcr.io/vue-bootstrap-dev/releases/vue-bootstrap:$VERSION

# Push to GCP
# Push container to GCP's Artifact Repository
docker push gcr.io/vue-bootstrap-dev/releases/vue-bootstrap:$VERSION

# Terraform
# Update terraform to point to the new version of the artifact.
