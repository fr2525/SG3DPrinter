
gcConnString = "DSN=Sql_Server_Express;UID=;PWD=;"

*gcConnString= 'DRIVER=PostgreSQL Unicode(x86);SERVER=localhost;PORT=5432;DATABASE=postgres;uid=postgres;pwd=oyster;Trusted_Connection=Yes;BoolsAsChar=0'

STORE SQLSTRINGCONNECT(gcConnString) TO gnConnHandle
IF gnConnHandle < 0
   = MESSAGEBOX('Cannot make connection', 16, 'SQL Connect Error')
ELSE
   *= MESSAGEBOX('Connection made', 48, 'SQL Connect Message')
   *= SQLDISCONNECT(gnconnHandle)
ENDIF

