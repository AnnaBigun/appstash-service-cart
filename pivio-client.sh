#!/bin/bash
export PIVIO_SERVICE_URL="https://app.leanix.net/services/integrations/v2/pivio/document"
export PIVIO_API_TOKEN="kCUVmpkf5uxqenc7SZBymEa4e8uME52tdmnH665z"
echo "Pivio client started..."
docker run --rm -v $(pwd):/source leanix/pivio-client pivio -serviceurl "${PIVIO_SERVICE_URL}" -verbose -addfield "api_token=${PIVIO_API_TOKEN}"
echo "Done!"
