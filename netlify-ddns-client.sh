#!/usr/bin/env sh
set -eu
. "${NETLIFY_DDNS_RC_FILE:-/etc/netlify-ddns-client/rc}"
curl -4 -s \
  -X POST \
  --max-time 300 \
  -u "${NETLIFY_DDNS_USERNAME}:${NETLIFY_DDNS_PASSWORD}" \
  -L "${NETLIFY_DDNS_ENDPOINT}/v1/netlify-ddns/replace-all-relevant-user-dns-records"
curl -6 -s \
  -X POST \
  --max-time 300 \
  -u "${NETLIFY_DDNS_USERNAME}:${NETLIFY_DDNS_PASSWORD}" \
  -L "${NETLIFY_DDNS_ENDPOINT}/v1/netlify-ddns/replace-all-relevant-user-dns-records"
