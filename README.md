# Generic Config Importer

A generic config importer which makes an API call to configure services running in a Docker swarm.

## Where can this be used?

- In a Docker swarm
- Anywhere you're making a POST request to an API to import configs

## Requirements

- npm
- Docker

## Usage

To use the config importer, you have to specify a docker-compose file. The compose file must look as follows, with `SERVICE` referring to the service to be configured.

```yml
version: '3.9'

services:
  <service to configure>-config-importer:
    image: jembi/config-importer:<version-tag>
    environment:
      SERVICE_NAME: <service name>
      SERVICE_API_PORT: <service port>
      API_USERNAME: <service username>
      API_PASSWORD: <service password>
      SSL: <true/false>
      API_PATH: <service config endpoint>
      CALLER_ID: <service to configure>-config-importer
    deploy:
      replicas: 1
      restart_policy:
        condition: none
```

The config importer depends on files placed in the config raft to attach as part of the request body. So, remember to specify your configs in the compose file. 

## Building locally

To build the config-importer image locally, run the following commands:
- `npm run build`
- `docker build -t jembi/config-importer:<version-tag> .` <-- don't forget to include the period!

## Notes

- Remember to remove stale configs on the Docker config raft, so that those configs can be subsequently updated
