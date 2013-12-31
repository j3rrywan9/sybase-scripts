#!/bin/sh

isql -Usa -Psybase -S$1 <<EOF
select @@servername
go
select @@version
go
exit
EOF
