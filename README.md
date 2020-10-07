# dns-tools
Ferramenta destinada a fase de information gathering(coleta de informações) nas primeiras fases de um pentest

este script tem a função de auxiliar na fase de information gathering(coleta de informações) em um pentest, as informações que o script tráz são informções a cerca dos servidores de email, web, dns, localização geográfica do ip que está respondendo pelo domínio e afins, o script faz uso do utilitário "host" que ja vem pré instalado por padrão na maioria das distribuições linux, também é utilizado o utilitário "figlet" para o banner e também o utiilitário "curl" para fazer uso da API que tráz informações a cerca da localização GPS do ip correspondente ao domínio passado via parâmetro

[+] A utilização é feita da seguinte forma: dns-tools.sh "dominio.com.br"
