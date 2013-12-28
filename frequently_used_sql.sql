select @@version

select @@maxpagesize

select @@boottime

sp_helpdb

sp_helpdevice

sp_configure "disable disk mirroring"

select address_info as "host/port", host_name() as "hostname", @@servername as "servername", db_name() as "current_dbname" from master..syslisteners

select address_info from master..syslisteners where net_type='tcp' and address_info not like 'localhost%' and address_info not like '127.0.0.1%'

select srvnetname from sysservers where srvname='SYS_BACKUP'

select name from sysdatabases where name not in ('master', 'model', 'sybsystemdb', 'sybsystemprocs', 'tempdb')

select sum(size) from sysusages where dbid=7

select durability from sysdatabases where name='loaddb'

use testdb
go
sp_spaceused syslogs
go

-- Production Database
disk init name="sandbox_data", physname="/opt/sybase/devices/sandbox/data_dev1.dat", size="10M", dsync=false, directio=true

disk init name="sandbox_log", physname="/opt/sybase/devices/sandbox/log_dev1.dat", size="10M", dsync=false, directio=true

create database sandbox on sandbox_data="5M" log on sandbox_log="5M"

dump database sandbox to "/opt/sybase/dumps/sandbox_full.1" at ASE1570_S1_BS

dump tran sandbox to "/opt/sybase/dumps/sandbox_log.1" at ASE1570_S1_BS

-- Staging Database
disk init name="sandbox_staging_data", physname="/opt/sybase/devices/sandbox_staging/data_dev1.dat", size="10M", dsync=false, directio=true

disk init name="sandbox_staging_log", physname="/opt/sybase/devices/sandbox_staging/log_dev1.dat", size="10M", dsync=false, directio=true

create database sandbox_staging on sandbox_staging_data="5M" log on sandbox_staging_log="5M" for load

load database sandbox_staging from "/opt/sybase/dumps/sandbox_full.1" at ASE1570_S1_BS

unmount database sandbox_staging to "/home/sybase/staging/manifest"

-- Backup and Recovery
dump database one_file_mix_log to "/home/sybase/jwang/ofm_1" stripe on "/home/sybase/jwang/ofm_2" stripe on "/home/sybase/jwang/ofm_3"

dump tran loaddb to "/net/nas/nas/engineering/sybase-ase/loaddb_tran_1"

load database shared_file_2 from "/net/nas/nas/engineering/sybase-ase/shared_file_2_full" with headeronly

load database shared_file_2 from "/net/nas/nas/engineering/sybase-ase/shared_file_2_full" with listonly=full

-- User Account
select suser_name(), suser_id(), db_name()

select name, suid from syslogins

-- Misc
use master
sp_dboption "sandbox", "allow nulls by default", true

select * from sysusages where dbid=db_id("sales_db1")

select * from sysobjects where type='U'
