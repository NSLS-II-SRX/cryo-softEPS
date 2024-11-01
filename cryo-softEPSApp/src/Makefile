TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = cryo-softEPS
# cryo-softEPS.dbd will be created and installed
DBD += cryo-softEPS.dbd

# cryo-softEPS.dbd will be made up from these files:
cryo-softEPS_DBD += base.dbd

# Include dbd files from all support applications:
cryo-softEPS_DBD += calc.dbd

# Add all the support libraries needed by this IOC
cryo-softEPS_LIBS += calc

# cryo-softEPS_registerRecordDeviceDriver.cpp derives from cryo-softEPS.dbd
cryo-softEPS_SRCS += cryo-softEPS_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
cryo-softEPS_SRCS_DEFAULT += cryo-softEPSMain.cpp
cryo-softEPS_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#cryo-softEPS_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
cryo-softEPS_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

