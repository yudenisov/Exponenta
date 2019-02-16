net stop PimIndexMaintenanceSvc_14083b
net stop UserDataSvc_14083b
net stop UnistoreSvc_14083b
net stop OneSyncSvc_14083b
net stop CDPUserSvc_14083b
net stop cbdhsvc_14083b
net stop DoSvc
net stop PrintWorkflow_14083b
net stop MessagingService_14083b
net stop DevicesFlowUserSvc_14083b
net stop DevicePickerUserSvc_14083b
net stop ConsentUXUserSvc_14083b
net stop CaptureService_14083b
net stop BlueToothUserService_14083b
net stop BcastDVRUserService_14083b
net stop SshdBroker
net stop WpnUserService_14083b
net stop lfSvc
taskkill /IM "CompatTelRunner.exe" /F
taskkill /IM "RuntimeBroker.exe" /F
taskkill /IM "backgroundTaskHost.exe" /F
taskkill /IM "SearchProtocolHost.exe" /F
taskkill /IM "SearchFilterHost.exe" /F
taskkill /IM "SearchIndexer.exe" /F

