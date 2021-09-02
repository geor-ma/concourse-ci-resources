#!/bin/bash
docker build . -t quay.io/livanova/pipeline-info-resource
docker push  quay.io/livanova/pipeline-info-resource