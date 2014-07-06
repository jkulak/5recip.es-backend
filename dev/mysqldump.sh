#!/bin/sh

STAMPME=db_dump_$(date +%Y%m%d-%H%M%S).sql

mysqldump -h localhost -u root -p 5recipes_backend > "../server/db/$STAMPME"