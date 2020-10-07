#!/bin/bash

#versao 1.0

	figlet -c D N S - T O O L S
	echo	                                                    versao 1.1
	echo
	echo "Endereço de dominio: $1"
		if [ "$1" == "" ];then
			echo ""
			echo "Coloque um parâmetro na frente"
			echo "dns-tools 8.8.8.8 ou"
			echo "dns-tools google.com"

		else	
	
			echo "servidores de email:"
			echo "==================="
			echo
			host -t mx $1
			echo
			echo "endereço ipv4: "
			echo "============="
			echo
			host -t A $1
			echo
			echo "endereço ipv6: "
			echo "============="
			echo
			host -t AAAA $1
			echo
			echo "servidores dns: "
			echo "=============="
			echo
			host -t ns $1
			echo	
				for i in $(host -t ns $1 | cut -d " " -f4)
					do
						echo "testando transferencia de zonas entre servidores dns: $i"
						echo "===================================================="
						host -l $1 $i
						echo ""
						echo ""
					done
						echo "geolocalização do endereço ip:"
						echo "============================="
						curl -s --url "https://json.geoiplookup.io/$1" | sed 's/"//' | sed 's/"//' | sed 's/"/==>  /' | sed 's/"//' | sed 's/,//'| grep -v "}" | grep -v "{"

					
		fi	
					

                              
