FROM cloudfoundry/cli:latest
RUN apk update && apk upgrade && apk add --no-cache bash jq curl
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
