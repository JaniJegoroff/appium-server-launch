# C# example

### Tested setup

```
macOS Monterey
12.6.2
```
```
node -v
v19.2.0
```
```
# Currently tested with globally installed Appium server
!Appium server (latest)
!node node_modules/appium/ -v
!1.22.3
```
```
dotnet --info
.NET SDK:
 Version:   7.0.100
 Commit:    e12b7af219
```

### Install dependencies

```
# Currently tested with globally installed Appium server
!# install Appium locally
!npm install
```

### Testing with NUnit

```
dotnet test
```
Example:
```
Janis-MBP:dotnet janijegoroff$ dotnet test
  Determining projects to restore...
  All projects are up-to-date for restore.
  dotnet -> /Users/janijegoroff/projects/appium-server-launch/dotnet/bin/Debug/net7.0/dotnet.dll
Test run for /Users/janijegoroff/projects/appium-server-launch/dotnet/bin/Debug/net7.0/dotnet.dll (.NETCoreApp,Version=v7.0)
Microsoft (R) Test Execution Command Line Tool Version 17.4.0 (x64)
Copyright (c) Microsoft Corporation.  All rights reserved.

Starting test execution, please wait...
A total of 1 test files matched the specified pattern.

Passed!  - Failed:     0, Passed:     2, Skipped:     0, Total:     2, Duration: 37 ms - dotnet.dll (net7.0)
```
