#!/usr/bin/env bash
now=$(date +%F)
bundle exec cucumber --tags @regression BROWSER=firefox LOGIN=test@gmail.com:123456 --tags ~@ignore --guess --format html --out regression$now.html --format ''Slowhandcuke::Formatter''