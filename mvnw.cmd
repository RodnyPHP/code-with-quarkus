@echo off
::Jvm args used during the execution of this script
setlocal
set MAVEN_OPTS=%MAVEN_OPTS% -Xmx1024m
if not "%WRAPPER_JAR%"=="" (
  java -cp "%WRAPPER_JAR%" -Dfile.encoding=UTF-8 org.apache.maven.wrapper.Main %* 
) else (
  echo "The wrapper jar '%WRAPPER_JAR%' does not exist."
)

::Search for the Maven installation
set HOME=%USERPROFILE%
if "%MAVEN_HOME%"=="" set MAVEN_HOME=%HOME%\.m2\repository\org\apache\maven\maven-3.6.3\maven-3.6.3-bin.zip
set MAVEN_BIN=%MAVEN_HOME%\bin
if not exist "%MAVEN_BIN%" (
  echo "Maven not found, try a manual installation."
  exit /b 1
)

::execute mvn command
"%MAVEN_BIN%\mvn" %* 
set RETURN_CODE=%?
if %RETURN_CODE% NEQ 0 (
  echo "Maven build failed, return code: %RETURN_CODE%"
)
endlocal
