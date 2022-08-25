# C# example

### Tested setup

```
macOS Monterey
12.5
```
```
node -v
v18.7.0
```
```
# Currently tested with globally installed Appium server
!Appium server (latest)
!node node_modules/appium/ -v
!1.22.3
```
```
dotnet --info
.NET SDK (reflecting any global.json):
 Version:   6.0.400
 Commit:    7771abd614
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
Determining projects to restore...
  All projects are up-to-date for restore.
  dotnet -> /Users/janijegoroff/projects/appium-server-launch/dotnet/bin/Debug/net6.0/dotnet.dll
Test run for /Users/janijegoroff/projects/appium-server-launch/dotnet/bin/Debug/net6.0/dotnet.dll (.NETCoreApp,Version=v6.0)
Microsoft (R) Test Execution Command Line Tool Version 17.3.0 (x64)
Copyright (c) Microsoft Corporation.  All rights reserved.

Starting test execution, please wait...
A total of 1 test files matched the specified pattern.

Passed!  - Failed:     0, Passed:     2, Skipped:     0, Total:     2, Duration: 56 ms - /Users/janijegoroff/projects/appium-server-launch/dotnet/bin/Debug/net6.0/dotnet.dll (net6.0)
```
