::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdFy5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQISKRhfSxaNKWW+JbkZ6eb+/Yo=
::eg0/rx1wNQPfEVWB+kM9LVsJDCaDP2C9FLoJ5uy7zOaCo0MYRoI=
::fBEirQZwNQPfEVWB+kM9LVsJDCaDP2C9FLoJ5uzY4++GrEgPNA==
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBpdQAHQAE+/Fb4I5/jHzeuEqUoPW/cxfKzX37WAJfJd713hFQ==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
color 1
cls
:BackgroundCleaner
@echo 1 dakika vererin lutfen, komutlari hazir baslamak icin herhangi bir tusa bas.
cls
timeout 60
cls
color E
cls

#Microsoft.NET
taskkill /PID MSBuild.exe /F

#Google Chrome
taskkill /PID GoogleUpdate.exe /F

#Adobe
taskkill /PID AAM Updates Notifier.exe /F
taskkill /PID AdobeGCClient.exe /F

#CCleaner
taskkill /PID CCleaner64.exe /F
taskkill /PID CCleaner32.exe /F
taskkill /PID CCleaner86.exe /F

#Iobit
taskkill /PID DriverBooster.exe /F
taskkill /PID Monitor.exe /F
taskkill /PID PubMonitor.exe /F
taskkill /PID PPUninstaller.exe /F
taskkill /PID IMFTips.exe /F
taskkill /PID IMF.exe /F
taskkill /PID IMFsrv.exe /F
taskkill /PID Scheduler.exe /F
sc stop IMFsrv
sc stop IMFservice
net stop IMFsrv
net stop IMFservice

#Windows
taskkill /PID OneDrive.exe /F
taskkill /PID jusched.exe /F
taskkill /PID SkypeHost.exe /F
taskkill /PID LicensingUI.exe /F
taskkill /PID WmiPrvSE.exe /F

#Ofice
taskkill /PID OfficeClickToRun.exe /F

color A
cls
@echo Islem bitti kapanmayan programlari gorev yoneticinden kontrol ede bilirsin. Eger kapanmasini istedigin program var ise gorev yoneticisainden *-*.exe olarak ve program adini (Sorunlar) kismindan bize ilet lutfen.
@echo By Crpsem
pause