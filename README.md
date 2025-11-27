Here’s a ready-to-use Maven Wrapper folder structure plus the exact files you need.
You can copy/paste them directly into your project.
(This is the standard Maven Wrapper 3.2.x layout.)

⸻

✅ Complete Maven Wrapper Folder Structure

.your-project
 ├─ mvnw
 ├─ mvnw.cmd
 ├─ .mvn
 │   ├─ wrapper
 │   │   ├─ maven-wrapper.jar
 │   │   ├─ maven-wrapper.properties
 │   │   └─ MavenWrapperDownloader.java (optional)
 │   └─ extensions.xml (optional)
 └─ pom.xml


⸻

✅ 1. mvnw (Linux/Mac executable)

#!/bin/sh
##############################################################################
# Maven Start Up Batch script
##############################################################################
WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain

java -cp ".mvn/wrapper/maven-wrapper.jar" $WRAPPER_LAUNCHER "$@"

Make it executable:

chmod +x mvnw


⸻

✅ 2. mvnw.cmd (Windows executable)

@REM Maven Wrapper Startup
SET WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain
java -cp ".mvn\wrapper\maven-wrapper.jar" %WRAPPER_LAUNCHER% %*


⸻

✅ 3. .mvn/wrapper/maven-wrapper.properties

distributionUrl=https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.9.6/apache-maven-3.9.6-bin.zip
wrapperUrl=https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar


⸻

✅ 4. .mvn/wrapper/maven-wrapper.jar

This binary cannot be written manually — it must be downloaded.

Download here:

https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar

Place it in:

.mvn/wrapper/maven-wrapper.jar


⸻

👍 OPTIONAL but recommended

.mvn/wrapper/MavenWrapperDownloader.java

Not needed for new versions, but okay to include.

⸻

🚀 After placing everything

Test it:

./mvnw -v

or

mvnw.cmd -v

You will see Maven downloading automatically.

⸻

If you want, I can generate a ZIP file containing the full Maven Wrapper folder ready to download — just tell me “generate ZIP”.