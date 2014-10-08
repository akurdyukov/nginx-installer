@echo off
set NginxDir=%~dp0\distr\nginx-1.7.1
set NginxVersion=1.7.1
"%WIX%\bin\heat.exe" dir %NginxDir% -cg ComponentGroup -gg -scom -sreg -sfrag -srd -var env.NginxDir -dr INSTALLFOLDER -out nginx-installer\files.wxs

%windir%\Microsoft.NET\Framework\v4.0.30319\msbuild /p:NginxDir=%nginx_dir% nginx-installer/nginx-installer.wixproj