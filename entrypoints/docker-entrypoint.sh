#!/bin/sh

set -e

bundle exec rake assets:precompile

bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:create db:migrate

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec rails s -b 0.0.0.0