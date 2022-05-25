#!/bin/sh
#
# Deploy to Google Cloud Platform (GCP).

# Pull Release Image
# Pull from GitHub Artifact Repository
docker pull ghcr.io/bellanov/vue-bootstrap:v1.0.0

# Tag Release Image
# Tag Release image for GCP's Artifact Repository
docker tag vue-bootstrap:v1.0.0 gcr.io/vue-bootstrap-dev/releases/vue-bootstrap:v1.0.0

# Push to GCP
# Push container to GCP's Artifact Repository
docker push gcr.io/vue-bootstrap-dev/releases/vue-bootstrap:v1.0.0

# Terraform
# Update terraform to point to the new version of the artifact.
