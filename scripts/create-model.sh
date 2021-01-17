#!/bin/bash

echo "Creating migration for user"
bundle exec rake db:create_migration NAME=create_users

migrate_file_path=$(find ../db/migrate/ -name "*create_users.rb")  
file=$(basename "$migrate_file_path")

cp ./templates/create_users_template.rb ../db/migrate/$file
bundle exec rake db:migrate

echo "Done creating migration for user"
