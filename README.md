# GUIÃO XML

Guião de uma peça de teatro ou uma série constituido por temporadas, episodios e cenas ou apenas partes ou apenas cenas em XML.
O guião tem um tipo de documento em XML definido em DTD e XSD.
Neste guião também é aplicada uma tranformação XSL para apresentar um indice e o desenrolar da ação segundo algumas regras.

Ficheiros:

guiao.xml : exemplo de um guião(definido em DTD) com a tranformação aplicada em XSL.

guiao1.xml : exemplo de um guião(definido em XSD) sem tranformação

guiao.dtd,guiao.xsd : definições dos elementos XML usando DTD e XSD.

regras.xsl : documento principal que define as tranformações XSL.

cabecalho.xsl,cena.xsl,temp.xsl,episod.xsl,parte.xsl : documentos especificos que definem tranformações XSL para cada elemento

style.css : documento CSS com a descrição do estilo dos elementos

COMO VISUALIZAR O GUIÃO:

Arrastar o ficheiro "guiao.xml" para o browser 

NOTA: Por razões de segurança e outras desconhecidas o unico browser que suporta as transformações XSL é o internet explorer 11
