@echo OFF

DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer
DEL /F /Q /S /A %systemdrive%\*.tmp
DEL /F /Q /S /A %systemdrive%\*._mp
DEL /F /Q /S /A %systemdrive%\*.log
DEL /F /Q /S /A %systemdrive%\*.bak
DEL /F /Q /S /A %systemdrive%\*.gid
DEL /F /Q /S /A %systemdrive%\*.chk
DEL /F /Q /S /A %systemdrive%\*.old
DEL /F /Q /S /A %systemdrive%\$Recycle.Bin
DEL /F /Q /S /A %windir%\prefetch
DEL /F /Q /S /A %windir%\temp
DEL /F /Q /S /A %temp%