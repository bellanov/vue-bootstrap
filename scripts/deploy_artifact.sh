#!/bin/sh
#
# Deploy a generic artifact to Google Cloud Platform (GCP).

VERSION=v1.1.0
DEV_RELEASE_BUCKET=releases-ifn7a7levvrxumj
QA_RELEASE_BUCKET=releases-t6g3wiipaxnjgyd
PROD_RELEASE_BUCKET=releases-hb342vzlcmmogiy

# Pull Release Artifact (*.zip)
# Pull from GitHub Artifact Repository.
wget https://github.com/bellanov/vue-bootstrap/archive/refs/tags/$VERSION.zip

# Push to GCP
# Copy into relevant project's (dev, qa, etc.) release bucket.
gsutil cp $VERSION.zip gs://$DEV_RELEASE_BUCKET
gsutil cp $VERSION.zip gs://$QA_RELEASE_BUCKET
gsutil cp $VERSION.zip gs://$PROD_RELEASE_BUCKET


# Terraform
# Update terraform to point to the new version of the artifact.
