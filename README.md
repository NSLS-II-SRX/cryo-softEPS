# cryo-softEPS
IOC to protect beamline optics in the event of cryocooler failure.

The cryocooler has been known to malfunction in such a way that the cryocooler halts communication and remains in a given state. This state can vary, sometimes continuing to cool the crystals without refilling or closing the supply and return lines and activating the pressure releif valves.

When looking at the HMI screen on the cryocooler or the PVs, everything appears to be okay since the last received values were good. However, the values do not update and are frozen in time. This IOC addresses this by watching one PV on the cryocooler and monitoring that it is changing over time.

One option is to monitor the fill level since it frequency bounces around. If this value does not change for 5 seconds, then the the IOC assumes the cryocooler has gone into a malfunctioning state. It will throw an alarm, which is monitored by the alarm server and sends notifications to staff. Additionally, to protect the optics, the front-end shutters are closed to eliminate heat load on the crystals, followed by isolating the vacumm section around the monochromator by closing the neighboring gate valves.

A flowchart of this logic can be found in `cryo-softEPSApp/op/logic*`

