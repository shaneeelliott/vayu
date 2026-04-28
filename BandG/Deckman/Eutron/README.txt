EUTRON

Internet : http://www.smartkey.eutron.com
Helpdesk email : helpdesk@eutron.com
Commercial email : info@eutron.com
Commercial phone : +39-035697080
Fax : +39-035697092


SMARTKEY DRIVER INSTALLATION
----------------------------

This package contains an installation library for the SmartKey drivers. 
This library can be used to install the SmartKey drivers with a simple 
function call.


FILES
-----

SmartKeyDriversInstaller.exe
SmartKeyDriversInstaller.msi
	Installers for an easy drivers installation. They install all the 
	SmartKey drivers: USB, Parallel, GSS and VDD (16 bit applications).

Sdi.exe
Sdiline.exe
	Simple visual and command line applications that use the library to 
	install the SmartKey drivers. 

skeyinst.dll
	Library for the automatic installation of the SmartKey drivers.

eugss2k.sys
eugssnt.sys
eugssxp.sys
eusk2par.sys
eusk2par-amd64.sys
eusk2par-ia64.sys
skeyusb.inf
skeyusb.sys
skeyusbnt.inf
skeyusbnt.sys
skeyvdd.dll
eusk3usb.inf
eusk3usb.sys
eusk3usb.cat
eusk3usb-amd64.sys
eusk3usb-ia64.sys
eusk3usb-uns.inf
eusk3usb-uns.cat
euinst-amd64.exe
euinst-ia64.exe
usbdrv.inf
usbdrv.sys
psapi.dll
	Files required for the SmartKey Drivers installation that must 
	reside in the same directory of the skeyinst.dll library.

skeyinst.chm
	Documentation of the skeyinst.dll library in CHM format.

skeyinst-nsis.zip
	Example of the drivers installation for NSIS.
	NSIS web site is http://nsis.sourceforge.net/.

skeyinst-msi.zip
	Example of the drivers installation for WIX.
	WIX web site is http://wix.sourceforge.net/.

skeyinst-is701.zip
	Example of the drivers installation for InstallShield 7.01.
	InstallShield web site is http://www.installshield.com/.

skeyinst-vb6.bas
skeyinst-vbnet.bas
	VisualBasic interface for the skeyinst.dll library.

skeyinst.h
skeyinst.lib
	C interface for the skeyinst.dll library.


FEATURES
--------

For any driver type the SDI tool allows three different operations:

* Install
Install and/or upgrade of the driver.

* Uninstall
Uninstall the driver.

* Remove/Forced Uninstall
Force a complete removal of the driver to solve erroneous install 
conditions. This operation must not be used in normal conditions, but 
only to recover from installation errors. After this operation it's 
always required to reboot.