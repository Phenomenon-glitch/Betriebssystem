#!/bin/bash
echo
echo

#überprüfung ob mehr als ein Paramter angegeben wurde
if [ "$#" -gt 1 ]; then
   echo "Zu viele Parameter: Es wird nur der erste Parameter berücksichtigt!"
   echo
   echo
fi

#rufe funktion von -h auf
if [[ "$1" = "-h" || "$1" = "--help" ]]; then
   echo "Verwendung: ./listen_ports.sh [-c|-u|-h]"
   echo "[-c|--command] gibt den Command selbst aus"
   echo  "[-u|--user] gibt die User-ID des Prozesses aus" 
   echo  "[-h|--help] gibt diese Hilfe aus" 
   echo 
   exit 1
fi 

#falls keine Parameter gegeben => standartmäßig -c aufrufen
#rufe funktion von -c auf
if [[ "$#" = 0 || "$1" = "-c" || "$1" = "--command" ]]; then

  echo "du hast -c command aufgerufen"
  ss -tuln | grep -E ':[0-9]+' | cut -d: -f2 | sort | uniq
  echo
  
fi   


#rufe funktion von -u auf
if [[ "$1" = "-u" || "$1" = "--user" ]]; then

  echo "du hast -u user command aufgerufen"
  echo
  
fi   
