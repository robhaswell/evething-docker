#!/bin/sh

curl https://www.fuzzwork.co.uk/dump/sqlite-latest.sqlite.bz2 | bunzip2 > \
    /tmp/sqlite-latest.sqlite

cd /opt/evething
python manage.py syncdb --noinput
python manage.py collectstatic --noinput
python manage.py migrate --all
python import.py

rm /tmp/sqlite-latest.sqlite

echo
echo
echo "Now you will be asked to create an initial user:"
echo

python manage.py createsuperuser
