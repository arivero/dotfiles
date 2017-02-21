#!/bin/bash

rsync -aAXv --exclude={"/dev/*","/proc/*","/sys/*","/home/anael/.TEMP","/home/anael/.TEMP2","/tmp/*","/home/anael/NAS/*","/home/anael/Descargas/*","/home/anael/Vídeos/*","/home/anael/.cache/*","/home/anael/.config/Franz/*","/home/anael/Raspberry/*","/run/*","/mnt/*","/home/anael/TEMP/*","/home/anael/.config/google-chrome/*","/home/anael/.local/share/dolphin-emu/*","/home/anael/.local/share/Steam/*","/home/anael/Soulseek\ Downloads/*","/media/*","/lost+found"} / /home/anael/.TEMP
tar czf /home/anael/.TEMP2/XPSbackup.tar.gz /home/anael/.TEMP -v
rsync -r -v --progress /home/anael/.TEMP2/XPSbackup.tar.gz /home/anael/NAS/Programas/XPS/XPSbackup.tar.gz
rm /home/anael/.TEMP/*
rm /home/anael/.TEMP2/XPSbackup.tar.gz
twmnc -d 300000 -t "[=======================================Copia de seguridad" -c "Completada================================]"

