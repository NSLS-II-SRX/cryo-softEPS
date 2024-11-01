#!../../bin/linux-x86_64/cryo-softEPS

#- You may have to change cryo-softEPS to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/cryo-softEPS.dbd"
cryo_softEPS_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/cryo-softEPS.db","user=akiss")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=akiss"
