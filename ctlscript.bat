@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\CHK\hypersonic\scripts\ctl.bat (start /MIN /B E:\CHK\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\CHK\ingres\scripts\ctl.bat (start /MIN /B E:\CHK\ingres\scripts\ctl.bat START)
if exist E:\CHK\mysql\scripts\ctl.bat (start /MIN /B E:\CHK\mysql\scripts\ctl.bat START)
if exist E:\CHK\postgresql\scripts\ctl.bat (start /MIN /B E:\CHK\postgresql\scripts\ctl.bat START)
if exist E:\CHK\apache\scripts\ctl.bat (start /MIN /B E:\CHK\apache\scripts\ctl.bat START)
if exist E:\CHK\openoffice\scripts\ctl.bat (start /MIN /B E:\CHK\openoffice\scripts\ctl.bat START)
if exist E:\CHK\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\CHK\apache-tomcat\scripts\ctl.bat START)
if exist E:\CHK\resin\scripts\ctl.bat (start /MIN /B E:\CHK\resin\scripts\ctl.bat START)
if exist E:\CHK\jboss\scripts\ctl.bat (start /MIN /B E:\CHK\jboss\scripts\ctl.bat START)
if exist E:\CHK\jetty\scripts\ctl.bat (start /MIN /B E:\CHK\jetty\scripts\ctl.bat START)
if exist E:\CHK\subversion\scripts\ctl.bat (start /MIN /B E:\CHK\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\CHK\lucene\scripts\ctl.bat (start /MIN /B E:\CHK\lucene\scripts\ctl.bat START)
if exist E:\CHK\third_application\scripts\ctl.bat (start /MIN /B E:\CHK\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\CHK\third_application\scripts\ctl.bat (start /MIN /B E:\CHK\third_application\scripts\ctl.bat STOP)
if exist E:\CHK\lucene\scripts\ctl.bat (start /MIN /B E:\CHK\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\CHK\subversion\scripts\ctl.bat (start /MIN /B E:\CHK\subversion\scripts\ctl.bat STOP)
if exist E:\CHK\jetty\scripts\ctl.bat (start /MIN /B E:\CHK\jetty\scripts\ctl.bat STOP)
if exist E:\CHK\hypersonic\scripts\ctl.bat (start /MIN /B E:\CHK\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\CHK\jboss\scripts\ctl.bat (start /MIN /B E:\CHK\jboss\scripts\ctl.bat STOP)
if exist E:\CHK\resin\scripts\ctl.bat (start /MIN /B E:\CHK\resin\scripts\ctl.bat STOP)
if exist E:\CHK\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\CHK\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\CHK\openoffice\scripts\ctl.bat (start /MIN /B E:\CHK\openoffice\scripts\ctl.bat STOP)
if exist E:\CHK\apache\scripts\ctl.bat (start /MIN /B E:\CHK\apache\scripts\ctl.bat STOP)
if exist E:\CHK\ingres\scripts\ctl.bat (start /MIN /B E:\CHK\ingres\scripts\ctl.bat STOP)
if exist E:\CHK\mysql\scripts\ctl.bat (start /MIN /B E:\CHK\mysql\scripts\ctl.bat STOP)
if exist E:\CHK\postgresql\scripts\ctl.bat (start /MIN /B E:\CHK\postgresql\scripts\ctl.bat STOP)

:end

