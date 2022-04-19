# Generic Config Importer

A generic config importer used to configure services running in a Docker swarm through the use of API calls.

## Where can this be used?

- In a Docker swarm
- Anywhere you're making a POST request to an API to import configs

## Usage

To use the config importer, you have to specify a docker-compose file. The compose file must specify

## Notes

- Remember to remove stale configs on the Docker config raft
