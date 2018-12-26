@echo off 
chcp 437 
set SessionID= 
set Target= 
set Address= 
set Initiator= 
for /f "tokens=4" %%a in (‘iscsicli SessionList ^| find "Session Id"‘) do set SessionID=%%a 
for /f "tokens=4" %%b in (‘iscsicli SessionList ^| find "Target Name"‘) do set Target=%%b 
for /f "tokens=5" %%c in (‘iscsicli ListTargetPortals ^| find "Address and Socket"‘) do set Address=%%c 
for /f "tokens=4" %%d in (‘iscsicli SessionList ^| find "Initiator Name"‘) do set Initiator=%%d 
iscsicli LogoutTarget %SessionID% 
iscsicli RemoveTargetPortal %Address% 3260 
iscsicli RemovePersistentTarget %Initiator% %Target% 3260 %Address% 3260 
net stop MSiSCSI

