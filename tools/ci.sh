#!/usr/bin/env bash

set -o errexit

flake8
python app/manage.py migrate

(cd app/server/static && npm run lint)
