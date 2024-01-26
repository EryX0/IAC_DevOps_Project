#!/bin/bash

# Set the backup directory
backup_dir=~/ansible_agent/backup/daily

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Get a human-readable date and time
date_time=$(date "+%Y-%m-%d_%H")

# Backup WordPress
tar -czvf "$backup_dir/wordpress_backup_${date_time}.tar.gz" ~/ansible_agent/docker_volumes/wordpress/

# Backup MySQL
docker exec -t mysql_container sh -c 'exec mysqldump -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" --all-databases' | gzip > "$backup_dir/mysql_backup_${date_time}.sql.gz"