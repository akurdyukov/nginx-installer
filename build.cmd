@echo off

rem Settings
set NginxDir=%~dp0\distr\nginx-1.7.1
set NssmDir=%~dp0\distr\nssm-2.22\win32
set NginxVersion=1.7.1

"%WIX%\bin\heat.exe" dir %NginxDir% -cg NginxGroup -gg -scom -sreg -sfrag -srd -var env.NginxDir -dr INSTALLFOLDER -t edit-exe-ids.xslt -out nginx-installer\nginx-files.wxs
"%WIX%\bin\heat.exe" dir %NssmDir% -cg NssmGroup -gg -scom -sreg -sfrag -srd -var env.NssmDir -dr INSTALLFOLDER -t edit-exe-ids.xslt -out nginx-installer\nssm-files.wxs

%windir%\Microsoft.NET\Framework\v4.0.30319\msbuild /p:NginxDir=%nginx_dir% nginx-installer/nginx-installer.wixproj