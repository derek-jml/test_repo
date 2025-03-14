#!/bin/bash
# cred_helper.sh
ARG=$1  # but we don't do anything with it as it's always "get"

function log () {
    echo "$@" >> "/tmp/artifact_registry_auth.log"
}

log "$ARG"
log "Authenticating"

TOKEN="$(gcloud auth print-access-token)"
log "$TOKEN"

echo {"headers": {"Authorization: Bearer $TOKEN"}}

log "Auth Complete"
