# Building Test Databases

1. Create necessary database devices using build_db_devs_S1.sql

isql -Usa -Psybase -SRH62_ASE_S1 -ibuild_db_devs_1.sql

2. Create test databases using create_databases.sql

isql -Usa -Psybase -SRH62_ASE_S1 -icreate_databases.sql

3. Create a table t1 in each test database

defncopy -Usa -Psybase -SRH62_ASE_S1 in t1.def testdb

4. Create a stored procedure pop_t1 in each test database

defncopy -Usa -Psybase -SRH62_ASE_S1 in pop_t1.def testdb

5. Step 3 and 4 can be done using defncopy_table_proc

# Creating Tables with Cross-database Constraint

1. Create two databases "pubs2" and "pubs3"

cd $SYBASE/$SYBASE_ASE/scripts

isql -Usa -Psybase -SRH62_ASE_S3 -w 220 -i installpubs2

isql -Usa -Psybase -SRH62_ASE_S3 -w 220 -i installpubs3

2. Create tables in the database "pubs3" that will be cross referenced to

isql -Usa -Psybase -SRH62_ASE_S3 -w 220 -i pubs3.sql

isql -Usa -Psybase -SRH62_ASE_S3 -iddlgen_TbConcilInformacaoObito.sql

isql -Usa -Psybase -SRH62_ASE_S3 -iddlgen_TbConcilSelecaoContratoObito.sql

3. Link "pubs2" and "pubs3" as "pubs2_dsource" and "pubs3_dsource"

4. Provision a VDB of "pubs2_dsource" and "pubs3_dsource" using the names "pubs2" and "pubs3" to a suitable target

5. Try to delete the VDB "pubs2"

# Workaround the Restrictive Permission Settings on ASE's Backup Server Errorlog

1. Create a script named "reset_bs_errorlog_perms.sh"

2. Put it in the same directory ($SYBASE/$SYBASE_ASE/install) as the RUN_SERVER file for the backup server

3. Modify the RUN_SERVER file so it calls reset_bs_errorlog_perms.sh in the background before calling backup server

