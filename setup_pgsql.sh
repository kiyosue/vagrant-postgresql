#!/bin/bash
#===============================================================================
#          FILE: setup_pgsql.sh
#
#         USAGE: setup_pgsql.sh
#
#   DESCRIPTION: Install PostgreSQL 9.x from pgdg yum, execute `initdb` with
#                eatch of installed PostgreSQLs, and start posrgres 9.3 server.
#
#       OPTIONS: ---
#
#  REQUIREMENTS: ---
#
#        AUTHOR: Yuta MASANO (masano@sraoss.co.jp)
#       CREATED: 2014-03-21
#===============================================================================

#===============================================================================
#  GLOBAL DECLARATIONS
#===============================================================================
PGDG_URLS=(
'http://yum.postgresql.org/9.1/redhat/rhel-6-x86_64/pgdg-redhat91-9.1-5.noarch.rpm'
'http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-redhat92-9.2-7.noarch.rpm'
'http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-redhat93-9.3-1.noarch.rpm'
)
for pgdg_url in ${PGDG_URLS[@]}; do
    PG_VERS+=($(echo "$pgdg_url" | sed -e 's/^.*\([1-9]\.[0-9]\).*$/\1/'))
done
for pg_ver in ${PG_VERS[@]}; do
    PG_PKG_VERS+=($(echo $pg_ver | sed -e 's/\.//'))
done

PGHOME='/var/lib/pgsql'

#===============================================================================
#  MAIN SCRIPT
#===============================================================================
echo '==============================='
echo 'Provisioning start.'
echo '==============================='

for pgdg_url in ${PGDG_URLS[@]}; do
    wget $pgdg_url
    rpm -ihv $(basename $pgdg_url)
done

for pg_pkg_ver in ${PG_PKG_VERS[@]}; do
    yum -y install postgresql${pg_pkg_ver}*
done

for pg_ver in ${PG_VERS[@]}; do
    su -l postgres -c "/usr/pgsql-$pg_ver/bin/initdb -D $PGHOME/$pg_ver/data --no-locale --encoding=UTF8"
done

su -l postgres -c '/usr/pgsql-9.3/bin/pg_ctl -w start'

echo '==============================='
echo 'Provisioning end.'
echo '==============================='

