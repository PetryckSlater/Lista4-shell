GNU nano 5.4                                                                           ipcensor.sh                                                                                     
#!/bin/bash
echo 'digite o nome do arquivo.'
read arquivo
sed -i -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/**!!CEN-SU-RA-DO!!**/g' $arquivo
