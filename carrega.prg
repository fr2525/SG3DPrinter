DECLARE INTEGER GetPrivateProfileString IN WIN32API;
	STRING Seccion,;
	STRING Clave,;
	STRING PorDefecto,;
	STRING @CadenaRetorno,;
	INTEGER longitud,;
	STRING NombreFichero

PUBLIC m.pnivel,m.data
PUBLIC gOperador
PUBLIC gCodOper
PUBLIC gDesenv

PUBLIC m.gEmpresa
PUBLIC m.gpalavra
PUBLIC m.gImpresso 
PUBLIC gSenha 
PUBLIC gDivcupom 
PUBLIC gMensa1 
PUBLIC gMensa2 
PUBLIC gDemo
PUBLIC lcdatabase
PUBLIC gcConnString 
PUBLIC gnConnHandle

PUBLIC gOcripta

gOcripta = CREATEOBJECT('crypto')
*SET STEP ON

*gcConnString = "Provider=vfpoledb;Data Source=" + SYS(5) + SYS(2003) + "\Dados\" +  "dbsg3d.dbc"
M.DATA = DATE() 


DO conecta_dbc.prg
 
gstrSql = "select  id, nome, login, celular, senha, nivel, salario, comissao, operador, datatual from tb_usuarios WHERE nivel = 1"
lnresult = SQLEXEC(gnconnHandle,gstrSql,'curoper' )

SELECT curoper

gNivel = curoper.nivel
gOperador = curoper.nome
gCodOper = curoper.id

USE

gSenha = .T.
gDesenv = .T.
gEmpresa = "Empresa Demo"
gPalavra = "Orçamento"
gImpresso = "80"
gDivcupom = .F. 
gMensa1 = "Mensagem 1"
gMensa2 = "Mensagem 2"

gDemo = .F.

SET DATE BRITI
SET CENTURY ON
SET CURRENCY TO 'R$'
SET SEPARATOR TO '.'
SET POINT TO ','
SET ENGINEBEHAVIOR 70

oldFundo = _screen.picture
oldTalk = SET("talk")
oldPath = SET("path")
oldDate = SET("date")
oldDel = SET("Deleted" )
oldCurrency = SET("Currency",1)
oldPoint = SET("point")
oldSeparator = SET("Separator")
oldExclusive = SET("Exclusive" )
oldReprocess = SET("Reprocess")
oldRefresh = SET("refresh")

DO sets.prg

SET PROCEDURE TO funcoes_globais.prg additive

