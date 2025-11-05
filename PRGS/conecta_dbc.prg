
*: Establecemos los path con la creación del objeto configuración:*
goconfig = CREATEOBJECT('configura')

lcdatabase = SYS(5) + SYS(2003) +"\Dados\" +  'dbsg3d.dbc'

CLEAR

*!*	*** Conectar a base de dados ....
*IF TRIM(lcdatabase) = ""
*   Messagebox("Error tentar conectar: Banco de dados inexiste")
*ENDIF

OPEN DATABASE (lcdatabase) SHARED

SET DATABASE TO (lcdatabase)

*--> Abrimos o arquivo de Parametros 
select * from tab_loja INTO CURSOR curLoja 

gEmpresa = curLoja.nome
gImpresso = curLoja.impresso
gPalavra = curLoja.palavra
gSenha = curLoja.senha
gDivcupom = curLoja.divcupom
gMensa1 = curLoja.Mensagem1
gMensa2 = curLoja.mensagem2 

Declare Integer FindWindow In Win32API Integer, String 
lnWinHandle = FindWindow( 0, "Sistema de Gerenciamento Comercial" )
If lnWinHandle # 0 
   =Messagebox( "O aplicativo já está sendo executado!", 16 )
   Cancel
ENDIF
