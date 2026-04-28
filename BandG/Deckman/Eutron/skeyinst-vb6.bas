Attribute VB_Name = "GLOBAL"

' Eutron SmartKey globals for Visual Basic 6

' The suggested way to install the SmartKey drivers is to simply call only the
' required SkeyInstallPar(), SkeyInstallUSB() and SkeyInstallGSS2() functions.
'
' If a function fails with the error code SKEYINST_ERROR_WAIT you need
' to ask at the user to close any other installation process and retry.
' If a function fails with the error code SKEYINST_ERROR_ADMIN
' you need to ask at the user to became Administrator and restart the installation.
' If a function fails with any other error code the installation is failed.
' 
' If a function returns with the code SKEYINST_OK, the operation is completed 
' with success.
' If a function returns with the code SKEYINST_WARNING_MUST_REBOOT, you must
' reboot the system to complete the operation.
' If a function returns with the code SKEYINST_WARNING_MUST_INSERT, you need
' to ask at the used to insert the SmartKey to complete the process.
'
' Please note that you don't need to check if a driver is already installed
' before calling the install functions. If the driver is already installed and
' updated these functions do nothing.

' Installation of the USB driver.
' All the required drivers for the USB SmartKey are installed.
' On Windows NT the USB Phoenix stack is also installed.
' \note
' The files skeyusb.inf, skeyusbnt.inf, skeyusb.sys, skeyusbnt.sys, usbdrv.sys, eusk3usb.sys, eusk3usb.inf and eusk3usb.cat must reside in the same directory of the DLL.
' To support 64 bits systems you must add also eusk3usb.*.inf eusk3usb.*.sys and euinst.*.exe files.
' \return A SKEYINST_* code.
'
Declare Function SkeyInstallUSB Lib "skeyinst.dll" () As Long

'
' Installation of the Parallel driver.
' All the required drivers for the Parallel SmartKey are installed.
' If in the current operating system no driver is needed, nothing is done and the function returns with success.
' \note
' The file eusk2par.sys must reside in the same directory of the DLL.
' To support 64 bits systems you must add also eusk2par.*.sys files. 
' \return A SKEYINST_* code.
'
Declare Function SkeyInstallPar Lib "skeyinst.dll" () As Long

'
' Installation of the GSS 2 (eugss*.sys) driver.
' All the required drivers for the GSS2 SmartKey are installed.
' If in the current operating system no driver is needed, nothing is done and the function returns with success.
' \note
' The files eugss*.sys must reside in the same directory of the DLL.
' \return A SKEYINST_* code.
'
Declare Function SkeyInstallGSS2 Lib "skeyinst.dll" () As Long

'
' Uninstallation of the USB driver.
' The previous installed USB drivers are uninstalled.
' If no driver is installed nothing is done and the function returns with success.
' \return A SKEYINST_* code.
'
Declare Function SkeyUnInstallUSB Lib "skeyinst.dll" () As Long

'
' Uninstallation of the Parallel driver.
' The previous installed Parallel drivers are uninstalled.
' If no driver is installed nothing is done and the function returns with success.
' \return A SKEYINST_* code.
'
Declare Function SkeyUnInstallPar Lib "skeyinst.dll" () As Long

'
' Uninstallation of the GSS 2 (eugss*.sys) driver.
' \return A SKEYINST_* code.
'
Declare Function SkeyUnInstallGSS2 Lib "skeyinst.dll" () As Long

'
' Forced uninstallation of the USB driver.
' The driver is uninstalled with force removing any reference on the filesystem and registry.
' \note Use only in extreme cases to recover from wrong installation.
' \note After a forced uninstallation you MUST always reboot.
' \return A SKEYINST_* code.
'
Declare Function SkeyForceUnInstallUSB Lib "skeyinst.dll" () As Long

'
' Forced uninstallation of the Parallel driver.
' The driver is uninstalled with force removing any reference on the filesystem and registry.
' \note Use only in extreme cases to recover from wrong installation.
' \note After a forced uninstallation you MUST always reboot.
' \return A SKEYINST_* code.
'
Declare Function SkeyForceUnInstallPar Lib "skeyinst.dll" () As Long

'
' Forced uninstallation of the GSS 2 (eugss*.sys) driver.
' The driver is uninstalled with force removing any reference on the filesystem and registry.
' \note Use only in extreme cases to recover from wrong installation.
' \note After a forced uninstallation you MUST always reboot.
' \return A SKEYINST_* code.
'
Declare Function SkeyForceUnInstallGSS2 Lib "skeyinst.dll" () As Long

'
' Get the last Windows error code.
' \return the last Windows error code like the standard Windows GetLastError() function.
'
Declare Function SkeyGetLastError Lib "skeyinst.dll" () As Long

'
' Select the log file to use.
' If you specify a log file, when you call one of the install or uninstall functions
' a very detailed report of all the operations is generated.
' This report can be used to debug problematic installation cases.
' \param File Complete path of the log file. Use NULL to disable it.
' \return A SKEYINST_* code.
'
Declare Function SkeyLogFile Lib "skeyinst.dll" (ByVal Path As String) As Long

'
' Error codes returned.
'

'
' You don't have Administrator rights.
'
' To install drivers you must be an Administrator of the system.
'
Global Const SKEYINST_ERROR_ADMIN = -4

'
' Another installation is in progress.
' You must ask at the user to complete any installation process in progress and then retry.
'
' A good behavior is:
'  - Try the first time
'  - Wait 5 seconds and retry
'  - Ask the user to complete and to close any installation window and retry
'  - Repeat the last step
'
' Note that the Windows XP tooltip, shown on the lower right corner of the screen
' after an hardware installation, must be closed because is part of the installation
' process.
'
Global Const SKEYINST_ERROR_WAIT = -3

'
' This operation is unsupported in this operating system.
' You can't call the function in this operation system.
'
Global Const SKEYINST_ERROR_UNSUPPORTED = -2

'
' Generic failure.
' The operation is failed for a generic error. You can call the SkeyGetLastError() function
' to get the Windows error code.
' If an install operation is done without the Administrator rights the SkeyGetLastError()
' function returns the value 5 (ERROR_ACCESS_DENIED).
'
Global Const SKEYINST_ERROR_FAIL = -1

'
' Operation completed successfully.
'
Global Const SKEYINST_OK = 0

'
' Operation completed successfully, but you must reboot to complete the operation.
' This code is generally returned after the forced uninstallation.
'
Global Const SKEYINST_WARNING_MUST_REBOOT = 1

'
' Operation completed successfully, but you must insert the token to complete the operation.
' This code is generally returned after the installation of the USB Driver on Windows 9x/Me/2000.
'
Global Const SKEYINST_WARNING_MUST_INSERT = 2
