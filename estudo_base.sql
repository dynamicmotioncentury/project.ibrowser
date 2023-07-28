use [DW_ENEM-2020]

--select * from ITENS_PROVA_2020
select top 100 * from MICRODADOS_ENEM_2020 
where sg_uf_prova = 'MG' --or CO_UF_PROVA = '31'
order by NU_NOTA_REDACAO DESC

select
	mde20.NU_INSCRICAO,
	ip20.TX_COR
from
	ITENS_PROVA_2020 as ip20
	inner join 
	MICRODADOS_ENEM_2020 as mde20
	on (ip20.CO_PROVA = mde20.CO_PROVA_LC) --provas do tipo Linguagens e codigos


--NU_NOTA_CN	Nota da prova de Ciências da Natureza
--NU_NOTA_CH	Nota da prova de Ciências Humanas
--NU_NOTA_LC	Nota da prova de Linguagens e Códigos
--NU_NOTA_MT	Nota da prova de Matemática


USE [DW_CENSO]
select * from dbo.SIGLAS_2

