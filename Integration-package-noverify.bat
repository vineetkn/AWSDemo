@echo off
setlocal

REM Clean and package the Maven projects

set PROJECT_DIR=..\INTEGRATION_CLIENTS\event-repository
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal
set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\commons

cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\multipart-upload-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\karza-commons
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\perfios-commons
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\canara-commons
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)




@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\rbih-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)




@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\karza-credit-bureau-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\karza-gst-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\karza-itr-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\karza-kyc-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\perfios-bsa-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\perfios-itr-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)




@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\finvu-accountaggregator-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\panverify-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal


set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\hunter-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)

@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\canara-cbs-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\crif-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)

@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\karza-legal-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\perfios-gst-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\equifax-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocalset PROJECT_DIR=..\..\INTEGRATION_CLIENTS\transunion-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\soap-client-commons
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)



@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\experian-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\digilocker-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\nesl-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\panverify-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\canara-bsa-orchestrator
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)

@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\cheque-book-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)

@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\aadharvault-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\fsa-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\ssa-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true


if %errorlevel% neq 0 (
    goto :end
)


@echo off
setlocal

set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\gupshup-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)

@echo off
setlocal


set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\canara-cersai-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)

@echo off
setlocal


set PROJECT_DIR=..\..\INTEGRATION_CLIENTS\perfios-aa-client
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)





@echo off
setlocalset PROJECT_DIR=..\..\CanaraIntegrations
cd %PROJECT_DIR%
call mvn -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8 -DskipTests clean deploy -Ddependency-check.skip=true

if %errorlevel% neq 0 (
    goto :end
)




pause
