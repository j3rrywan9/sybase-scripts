use pubs3
go
create table TbPessoa (
        CdParceiroComercial             int                              not null  ,
        CdPessoa                        numeric(12,0)                    not null ,
        CONSTRAINT primCdPessoa PRIMARY KEY NONCLUSTERED ( CdPessoa )  on 'default'
)
go
grant all on TbPessoa to public
go
create table TbParceiroComercial (
        CdParceiroComercial int,
        CONSTRAINT primCdParceiroComercial PRIMARY KEY NONCLUSTERED ( CdParceiroComercial )  on 'default'
        )
go
grant all on TbParceiroComercial to public
go
