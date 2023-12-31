#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake assets:clean
bundle exec rake assets:precompile
