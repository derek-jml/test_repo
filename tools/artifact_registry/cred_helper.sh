#!/bin/bash
# lol I like pretty-printed JSON. It's not a requirement though.
echo '{'
echo '  "headers": {'
echo '    "Authorization": ['
echo '      "Bearer '$(gcloud auth print-access-token)'"'
echo '    ]'
echo '  }'
echo '}'