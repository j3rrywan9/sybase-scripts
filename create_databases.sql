drop database testdb1
go
create database testdb1 on data_dev1 = '100M', data_dev2 = '100M'
log on log_dev1 = '50M'
go
alter database testdb1 on data_dev1 = "100M"
go

drop database testdb2
go
create database testdb2 on data_dev2 = '100M' 
log on log_dev2 = '50M'
go
alter database testdb2 on data_dev2 = "100M"
go

drop database loaddb
go
create database loaddb on data_dev3 = '100M'
log on log_dev3 = '50M'
go
alter database loaddb on data_dev3 = "100M"
go
