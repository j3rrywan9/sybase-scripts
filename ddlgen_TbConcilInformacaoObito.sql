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
-- -Uhelio_almeida -SPTASYBUATFIN -TU -NTbConcilInformacaoObito -Dpubs2 -o ddlgen_TbConcilInformacaoObito.out 
-- at 03/02/15 15:16:44 BRT



-----------------------------------------------------------------------------
-- DDL for Table 'pubs2.dbo.TbConcilInformacaoObito'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "pubs2.dbo.TbConcilInformacaoObito" >>>>>'
go

use pubs2
go 

setuser 'dbo'
go 

IF EXISTS (SELECT 1 FROM sysobjects o, sysusers u WHERE o.uid=u.uid AND o.name = 'TbConcilInformacaoObito' AND u.name = 'dbo' AND o.type = 'U')
	drop table TbConcilInformacaoObito

IF (@@error != 0)
BEGIN
	PRINT "Error CREATING table 'pubs2.dbo.TbConcilInformacaoObito'"
	SELECT syb_quit()
END
go

create table TbConcilInformacaoObito (
	CdConcilInformacaoObito         int                              not null  ,
	CdConcilTipoArquivo             int                              not null  ,
	CdConcilStatusObito             int                              not null  ,
	CdParceiroComercial             int                              not null  ,
	DtReferenciaArquivoObito        datetime                         not null  ,
	DtInicialPeriodoObito           datetime                             null  ,
	DtFinalPeriodoObito             datetime                             null  ,
	DtGeracaoArquivoObito           datetime                             null  ,
	DtEnvioArquivoObito             datetime                             null  ,
	DtRecebimentoArquivoObito       datetime                             null  ,
	QtContratoInadimplente          int                                  null  ,
	QtContratoSemRepasse            int                                  null  ,
	QtRegistroArquivoObito          numeric(14,0)                        null  ,
		CONSTRAINT pnunTbConcilInformacaoObito PRIMARY KEY NONCLUSTERED ( CdConcilInformacaoObito )  on 'default' 
)
lock allpages
 on 'default'
partition by roundrobin 1
go 

-- Grant Insert on dbo.TbConcilInformacaoObito to FINANCEIRA 
-- go
-- Grant Delete on dbo.TbConcilInformacaoObito to FINANCEIRA 
-- go
-- Grant Select on dbo.TbConcilInformacaoObito to FINANCEIRA 
-- go
-- Grant Update on dbo.TbConcilInformacaoObito to FINANCEIRA 
-- go
-- Grant Select on dbo.TbConcilInformacaoObito to consulta 
-- go
-- Grant Select on dbo.TbConcilInformacaoObito to gr_vfxcontrol 
-- go
grant all on dbo.TbConcilInformacaoObito to public
go

setuser
go 

-----------------------------------------------------------------------------
-- Dependent DDL for Object(s)
-----------------------------------------------------------------------------
-- alter table pubs2.dbo.TbConcilInformacaoObito
-- add constraint FKTbCnclSttsObtTbCnclInfrmcObo FOREIGN KEY (CdConcilStatusObito) REFERENCES pubs2.dbo.TbConcilStatusObito(CdConcilStatusObito)
-- go

-- alter table pubs2.dbo.TbConcilInformacaoObito
-- add constraint FKTbCnclTpArqvTbCnclInfrmcObto FOREIGN KEY (CdConcilTipoArquivo) REFERENCES pubs2.dbo.TbConcilTipoArquivo(CdConcilTipoArquivo)
-- go

alter table pubs2.dbo.TbConcilInformacaoObito
add constraint FkTbParcrCmrclTbCnclInfrmcObto FOREIGN KEY (CdParceiroComercial) REFERENCES pubs3.dbo.TbParceiroComercial(CdParceiroComercial)
go



-- DDLGen Completed
-- at 03/02/15 15:16:44 BRT
