# Concourse Pipeline metadata information resource

Pipeline's metadata information is not available to tasks. They are only available to concourse resources.

This resource will create a pipeline-info file with pipeline metadata information. 

This file can be used by tasks using this resource.

example of metadata information:

```json
{
  "BUILD_ID": "12",
  "BUILD_NAME": "123",
  "BUILD_JOB_NAME": "merge",
  "BUILD_PIPELINE_NAME": "pipeline name",
  "BUILD_TEAM_NAME": "team name",
  "ATC_EXTERNAL_URL": "concourse url"
}
```

## check script

outputs date +s%

## in script

- gets pipeline metadata from environment variables, creates a file called pipeline-info in destination folder ($1) assigned by concourse.
- pipeline-info has metadata information in json format as shown above.
- use pipeline-info file in tasks which uses this resource

# output script

outputs date +s%