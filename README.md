# MultiSMS

A thing I want to build to send text reminders to multiple people without group messaging.

## Requirements to run locally
- Docker
- docker-compose

## Setup

```
git clone https://github.com/notmarkmiranda/multiseams.git
cd multiseams
cp .env.sample .env
docker-compose up -d
docker-compose exec app bundle exec rake db:create db:migrate
```

Navigate to `http://127.0.0.1:3000`
