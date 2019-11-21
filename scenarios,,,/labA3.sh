#!/bin/bash
if [ -z "$1" ]; then
    echo "ERROR: Credentials file not specified" >&2; exit 1;
elif [ -z "$2" ]; then
    echo "ERROR: Backup directory not specified" >&2; exit 1;
fi

credentials_file=$(grealpath $1)
backup_directory=$(grealpath $2)
if [ ! -f "$credentials_file" ]; then
    echo "ERROR: Credentials file does not exist" >&2; exit 1;
elif [ ! -d "$backup_directory" ]; then
    echo "ERROR: Backup directory does not exist" >&2; exit 1;
fi

source $credentials_file
if [ -z ${hostname: +word} ]; then
    echo "ERROR: hostname is not set" >&2; exit 1;
elif [-z ${username: +word} ]; then
    echo "ERROR: username is not set" >&2; exit 1;
elif [ -z ${password: +word} ]; then
    echo "ERROR: password is not set" >&2; exit 1;
fi

mysqldump -h$hostname -u$username -p$password --all-databases > backup.sql
if [[ $? != 0 ]]; then
     echo "ERROR: Error is taking mysql backup"
fi

mv backup.sql $backup_directory/$(date +%F_%R).sql
path_to_Script=$(realpath "$0")
if ! (crontab -l | grep -Fxq "*/30 * * * * $path_to_script $credentials_file $backup_directory"); then
    crontab -l | { cat; echo "*/30 * * * * $path_to_script $credentials_file $backup_directory"; } | crontab -
    echo "Script added to Cron"
fi

exit 0
