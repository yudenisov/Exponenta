rem остановка сторонних сервисов
net stop "Adguard Service"
net stop YandexBrowserService
net stop gupdate
net stop gupdatem
net stop "Pml Driver HPZ12"
net stop "Net Driver HPZ12"
net stop NvTelemetryContainer
net stop NvContainerLocalSystem
net stop NVDisplay.ContainerLocalSystem
net stop "Apple Mobile Device Service"
net stop "iPod Service"
rem остановка основных сервисов
Net stop napagent
Net stop wmiapsrv
Net stop WZCSVC
Net stop dot3svc
Net stop sharedaccess
Net stop webclient
Net stop seclogon
Net stop rasauto
Net stop uploadmgr
rem Net stop spooler
Net stop RDSessMgr
Net stop netddedsmdm
Net stop remoteaccess
Net stop lmhosts
Net stop browser
Net stop Alerter
Net stop schedule
Net stop httpfilter
Net stop lanmanworkstation
Net stop lanmanserver
Net stop netlogon
Net stop netman
Net stop stisvc
Net stop wsearch
Net stop xmlprov
net stop upnphost
Net stop ssdpsrv
Net stop wmpnetworksvc
Net stop nla
Net stop netdde
Net stop Messenger
net stop WpnService
Net stop alg
Net stop termservice
Net stop scardsvc
net stop WiaRpc
Net stop tapisvc
Net stop themes
Net stop remoteregistry
Net stop mnmsrvc
Net stop rsvp
Net stop tlntsrv
Net stop lpdsvc
Net stop simptcp
net stop nettcpactivator
net stop lmhosts
net stop NetTcpPortSharing
Net stop smnp
rem остановка средств коммуникаций
Net stop lprip
Net stop fax
Net stop iisadminn
net stop "Microsoft IIS Administration"
rem остановка домашней группы
net stop HomeGroupProvider
net stop HomeGroupListener
net stop FDResPub
rem остановка критичных сервисов
Net stop msmq
Net stop msmqtrigger
net stop iphlpsvc
net stop NcdAutoSetup
net stop wlansvc
net stop Wcmsvc
net stop netprofm
net stop NlaSvc
net stop WinHttpAutoProxySvc
Net stop dhcp
Net stop dnscache
net start sensorsservice
net stop eventlog
net stop pla
net stop Wecsvc
net stop wersvc
Net stop sysmonlog
net stop p2psvc
net stop p2pimsvc

