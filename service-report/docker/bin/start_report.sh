#!/bin/bash
#### debug model prod
#nohup java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n -jar -Dspring.profiles.active=dev target/ReportService.jar > report.log 2>&1 &

#### normal prod model
#nohup java -jar -Dspring.profiles.active=prod target/ReportService.jar > report.log 2>&1 &

#### normal test model
#nohup java -jar -Dspring.profiles.active=test target/ReportService.jar > report.log 2>&1 &

#### normal dev model
nohup java -jar -Dspring.profiles.active=$1 target/service-report.jar > report.log 2>&1 &

tail -100f report.log