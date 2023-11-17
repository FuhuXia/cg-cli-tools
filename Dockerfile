FROM cloudfoundry/cli:latest
RUN apk update && apk upgrade && apk add --no-cache bash
RUN apk add grep
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
