#!../../bin/linux-x86_64/cryo-softEPS

#- You may have to change cryo-softEPS to something else
#- everywhere it appears in this file

< /epics/common/xf05idd-ioc1-netsetup.cmd
< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/cryo-softEPS.dbd"
cryo_softEPS_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/cryo-softEPS.db","PREFIX=XF:05IDA-UT{Cryo:1}, WATCHPV=XF:05IDA-UT{Cryo:1}L:19-I")

cd "${TOP}/iocBoot/${IOC}"
iocInit

