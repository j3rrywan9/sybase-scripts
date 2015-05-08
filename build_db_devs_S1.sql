use master
go

sp_configure "number of devices", 500
go

disk init name = 'data_dev1',
physname = '/opt/sybase/devices/data1/S1_data_dev1.dat',
size = 512000
go

disk init name = 'data_dev2',
physname = '/opt/sybase/devices/data1/S1_data_dev2.dat',
size = 512000
go

disk init name = 'data_dev3',
physname = '/opt/sybase/devices/data1/S1_data_dev3.dat',
size = 512000
go

disk init name = 'data_dev4',
physname = '/opt/sybase/devices/data1/S1_data_dev4.dat',
size = 512000
go

disk init name = 'log_dev1',
physname = '/opt/sybase/devices/log1/S1_log_dev1.dat',
size = 512000
go

disk init name = 'log_dev2',
physname = '/opt/sybase/devices/log1/S1_log_dev2.dat',
size = 512000
go

disk init name = 'log_dev3',
physname = '/opt/sybase/devices/log1/S1_log_dev3.dat',
size = 512000
go
