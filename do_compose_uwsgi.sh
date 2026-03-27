#!/bin/bash

docker-compose -f compose-uwsgi.yml -p fero $@
