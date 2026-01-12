FUNCTION formatadataDB (lcDataOriginal)
LOCAL lcAno, lcUf, lcMes, lcDataFormatada

* Suponha que este é o seu dado original em formato string 'dd/mm/aaaa'
*lcDataOriginal = "15/06/2026"

* Extrai as partes usando SUBSTR() e AT() para encontrar as barras
* Dia: SUBSTR(String, Posição Inicial, Número de Caracteres)
lcUf  = SUBSTR(lcDataOriginal, 1, 2)
lcMes = SUBSTR(lcDataOriginal, 4, 2)
lcAno = SUBSTR(lcDataOriginal, 7, 4)

* Concatena na nova ordem
lcDataFormatada = lcAno + "-" + lcMes + "-" + lcUf

* Exibe o resultado: "2026-06-15"
WAIT WINDOW "Data original: " + lcDataOriginal + CHR(13) + ;
            "Data formatada: " + lcDataFormatada