# Building Test Databases

- Create necessary database devices using **build_db_devs_S1.sql**
```
isql -Usa -Psybase -SRH62_ASE_S1 -ibuild_db_devs_1.sql
```

- Create test databases using **create_databases.sql**
```
isql -Usa -Psybase -SRH62_ASE_S1 -icreate_databases.sql
```

- Create a table t1 in each test database
```
defncopy -Usa -Psybase -SRH62_ASE_S1 in t1.def testdb
```

- Create a stored procedure pop_t1 in each test database
```
defncopy -Usa -Psybase -SRH62_ASE_S1 in pop_t1.def testdb
```

- Above two steps can be done using **defncopy_table_proc**

# Creating Tables with Cross-database Constraint

- Create two databases "pubs2" and "pubs3"
```
cd $SYBASE/$SYBASE_ASE/scripts
isql -Usa -Psybase -SRH62_ASE_S3 -w 220 -i installpubs2
isql -Usa -Psybase -SRH62_ASE_S3 -w 220 -i installpubs3
```

- Create tables in the database "pubs3" that will be cross referenced to
```
isql -Usa -Psybase -SRH62_ASE_S3 -w 220 -i pubs3.sql
isql -Usa -Psybase -SRH62_ASE_S3 -iddlgen_TbConcilInformacaoObito.sql
isql -Usa -Psybase -SRH62_ASE_S3 -iddlgen_TbConcilSelecaoContratoObito.sql
```

- Link "pubs2" and "pubs3" as "pubs2_dsource" and "pubs3_dsource"

- Provision a VDB of "pubs2_dsource" and "pubs3_dsource" using the names "pubs2" and "pubs3" to a suitable target

- Try to delete the VDB "pubs2"

# Workaround the Restrictive Permission Settings on ASE's Backup Server Errorlog

This only applies to SAP ASE 15.7 SP100 and above, please refer to http://scn.sap.com/community/ase-custom-applications/blog/2015/02/25/how-to-make-the-permission-settings-on-ases-errorlog-less-restrictive

1. Create a script named **reset_bs_errorlog_perms.sh**

2. Put it in the same directory **$SYBASE/$SYBASE_ASE/install** as the RUN_SERVER file for the backup server

3. Modify the RUN_SERVER file so it calls **reset_bs_errorlog_perms.sh** in the background before calling backup server

