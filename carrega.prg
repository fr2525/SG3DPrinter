DECLARE INTEGER GetPrivateProfileString IN WIN32API;
	STRING Seccion,;
	STRING Clave,;
	STRING PorDefecto,;
	STRING @CadenaRetorno,;
	INTEGER longitud,;
	STRING NombreFichero

PUBLIC m.pnivel,m.data,gOperador, gDesenv
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
gOperador = 'MASTER' 
gNivel=1
gSenha = .T.
gDesenv = .T.
gEmpresa = "Empresa Demo"
gPalavra = "Orçamento"
gImpresso = "80"
gDivcupom = .F. 
gMensa1 = "Mensagem 1"
gMensa2 = "Mensagem 2"

gDemo = .F.

*lcdatabase = SYS(5) + SYS(2003) +"\Dados\" +  'dbsg3d.dbc'
*!*	*SET DEFA TO &goconfig.pdatabasepath
*!*	*OPEN DATABASE Dbsgl.mdb SHARED 
*OPEN DATABASE (lcdatabase)
*SET DATABASE TO (lcdatabase)

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

*SET CLOCK ON
*SET PROCEDURE TO funcoes.prg

