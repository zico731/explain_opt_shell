# explique l'option d'une commande basé sur explainshell.com
echo "Entrer la commande + option à analyser ( ex: ls -l saisir ls l )" ; read -p "commande option : " cmd opt && curl https://explainshell.com/explain?cmd=+${cmd}+-${opt} 2>/dev/null|html2text|awk -e "/^\-${opt}/,/source/"| head -n -1
