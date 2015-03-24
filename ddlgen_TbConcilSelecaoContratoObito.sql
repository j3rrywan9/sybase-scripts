-- Sybase Adaptive Server Enterprise DDL Generator Utility/15.0.3/EBF 20623 ESD#4.2/S/1.6.0/ase1503/Sat Dec 8 17:39:27 PST 2012


-- Confidential property of Sybase, Inc.
-- Copyright 2001, 2007
-- Sybase, Inc.  All rights reserved.
-- Unpublished rights reserved under U.S. copyright laws.
-- This software contains confidential and trade secret information of Sybase,
-- Inc.   Use,  duplication or disclosure of the software and documentation by
-- the  U.S.  Government  is  subject  to  restrictions set forth in a license
-- agreement  between  the  Government  and  Sybase,  Inc.  or  other  written
-- agreement  specifying  the  Government's rights to use the software and any
-- applicable FAR provisions, for example, FAR 52.227-19.
-- Sybase, Inc. One Sybase Drive, Dublin, CA 94568, USA


-- DDLGen started with the following arguments
-- -Uhelio_almeida -SPTASYBUATFIN -TU -NTbConcilSelecaoContratoObito -Dpubs2 -o ddlgen_TbConcilSelecaoContratoObito.out 
-- at 03/02/15 15:18:00 BRT



-----------------------------------------------------------------------------
-- DDL for Table 'pubs2.dbo.TbConcilSelecaoContratoObito'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "pubs2.dbo.TbConcilSelecaoContratoObito" >>>>>'
go

use pubs2
go 

setuser 'dbo'
go 

IF EXISTS (SELECT 1 FROM sysobjects o, sysusers u WHERE o.uid=u.uid AND o.name = 'TbConcilSelecaoContratoObito' AND u.name = 'dbo' AND o.type = 'U')
	drop table TbConcilSelecaoContratoObito

IF (@@error != 0)
BEGIN
	PRINT "Error CREATING table 'pubs2.dbo.TbConcilSelecaoContratoObito'"
	SELECT syb_quit()
END
go

create table TbConcilSelecaoContratoObito (
	CdConcilSelecaoContratoObito    int                              not null  ,
	CdConcilInformacaoObito         int                              not null  ,
	DtReferenciaSelecaoContratObto  datetime                         not null  ,
	NuContrato                      numeric(14,0)                    not null  ,
	NuCpf                           char(11)                         not null  ,
	DtContrato                      datetime                         not null  ,
	CdParceiroComercial             int                              not null  ,
	CdPessoa                        numeric(12,0)                        null  ,
		CONSTRAINT pnunTbConcilSelecaoContratObto PRIMARY KEY NONCLUSTERED ( CdConcilSelecaoContratoObito )  on 'default' 
)
lock allpages
 on 'default'
partition by roundrobin 1
go 

-- Grant Insert on dbo.TbConcilSelecaoContratoObito to FINANCEIRA 
-- go
-- Grant Delete on dbo.TbConcilSelecaoContratoObito to FINANCEIRA 
-- go
-- Grant Select on dbo.TbConcilSelecaoContratoObito to FINANCEIRA 
-- go
-- Grant Update on dbo.TbConcilSelecaoContratoObito to FINANCEIRA 
-- go
-- Grant Select on dbo.TbConcilSelecaoContratoObito to consulta 
-- go
-- Grant Select on dbo.TbConcilSelecaoContratoObito to gr_vfxcontrol 
-- go
grant all on dbo.TbConcilSelecaoContratoObito to public
go

setuser
go 

-----------------------------------------------------------------------------
-- Dependent DDL for Object(s)
-----------------------------------------------------------------------------
alter table pubs2.dbo.TbConcilSelecaoContratoObito
add constraint FkTbPessoaTbConcilSlcCntrtObto FOREIGN KEY (CdPessoa) REFERENCES pubs3.dbo.TbPessoa(CdPessoa)
go

alter table pubs2.dbo.TbConcilSelecaoContratoObito
add constraint FKTbPrcrCmrclTbCnclSlcCntrtObo FOREIGN KEY (CdParceiroComercial) REFERENCES pubs3.dbo.TbParceiroComercial(CdParceiroComercial)
go



-- DDLGen Completed
-- at 03/02/15 15:18:01 BRT
