net stop PimIndexMaintenanceSvc_12d2b4da
net stop UserDataSvc_12d2b4da
net stop UnistoreSvc_12d2b4da
net stop OneSyncSvc_12d2b4da
net stop CDPUserSvc_12d2b4da
net stop cbdhsvc_12d2b4da
net stop DoSvc
net stop PrintWorkflow_12d2b4da
net stop MessagingService_12d2b4da
net stop DevicesFlowUserSvc_12d2b4da
net stop DevicePickerUserSvc_12d2b4da
net stop ConsentUXUserSvc_12d2b4da
net stop CaptureService_12d2b4da
net stop BlueToothUserService_12d2b4da
net stop BcastDVRUserService_12d2b4da
net stop SshdBroker
net stop WpnUserService_12d2b4da
net stop lfSvc
taskkill /IM "CompatTelRunner.exe" /F
taskkill /IM "RuntimeBroker.exe" /F
taskkill /IM "backgroundTaskHost.exe" /F
taskkill /IM "SearchProtocolHost.exe" /F
taskkill /IM "SearchFilterHost.exe" /F
taskkill /IM "SearchIndexer.exe" /F

