#!/bin/bash

if [ $# != 4 ]
  then
    echo ""
    echo "Usage: createForeignKeys.sh Host, User, Password, Database"
    echo ""
    exit 1
fi

HOST=$1
USER=$2
PASSWORD=$3
DATABASE=$4

#
# Added the "force" option to make the script continue, even if
# foreign key violation occur.
#

CMD="mysql --force -h $HOST -u $USER -p$PASSWORD $DATABASE"

$CMD < ../schema/add_all_foreign_keys.ddl
