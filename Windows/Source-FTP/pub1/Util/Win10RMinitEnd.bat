@echo off
winrm qc -quiet
net start RpcSs
net start RemoteRegistry
