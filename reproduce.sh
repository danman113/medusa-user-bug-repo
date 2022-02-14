#!/bin/bash
sudo docker-compose up -d --force-recreate --build
docker exec -it  medusa-server-default /bin/bash -c "medusa user -e some@email.com -p some-password"
