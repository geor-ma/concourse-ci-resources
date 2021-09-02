FROM google/cloud-sdk:alpine

RUN apk update
RUN apk add --no-cache curl bash jq gettext-dev

COPY assets/check /opt/resource/
COPY assets/in    /opt/resource/in
COPY assets/out   /opt/resource/out

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check
