#!/bin/sh

STAMPME=db_dump_$(date +%Y%m%d-%H%M%S).sql

mysqldump -h localhost -u root -p my_db > "$STAMPME"