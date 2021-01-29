clear


echo '---CRIANDO ESTRUTURA---';
USUARIO=$(whoami);
cd ~ &&  if [ -e .openmakeboot-cfg/configure ]; then  echo DIRETORIO JA EXISTE;   else echo CRIANDO DIRETORIO; mkdir .openmakeboot-cfg; cd .openmakeboot-cfg &&  mkdir configure; echo AGORA DIRETORIO JA EXISTE; fi;  cd ~ && cd .openmakeboot-cfg/configure && if [ -e fullboot.sh ];  then echo ARQUIVO JA EXISTE; else touch fullboot.sh; echo 'umount /dev/sdb1 && mkfs.vfat -I /dev/sdb1 && dd if=/home/'${USUARIO}'/linux.iso of=/dev/sdb1 status=progress && sync && umount /dev/sdb1;

echo LIMPANDO FUTILIDADES
cd ~ && rm -r /home/'${USUARIO}'/.openmakeboot-cfg
echo FINALIZADO
' > fullboot.sh; echo AGORA ARQUIVO JA EXISTE; fi; chmod +x . fullboot.sh;


echo '---CRIANDO ASROOT---';
if  [ -e asroot.sh ]; then echo ASROOT JA EXISTE; else touch asroot.sh; echo '#!/bin/bash
chmod +x . fullboot.sh
if hash pkexec 2> /dev/null; then
pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY QT_X11_NO_MITSHM=1 /home/'${USUARIO}'/.openmakeboot-cfg/configure/fullboot.sh
else
echo ERROR
fi
' > asroot.sh; echo ASROOT CONFIGURADO; fi; cd ~ && cd .openmakeboot-cfg/configure &&  echo EXECUTANDO ASROOT; chmod +x . asroot.sh;

. asroot.sh
