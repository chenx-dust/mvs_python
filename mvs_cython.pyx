from CameraParams cimport *

ctypedef void* void_pt

cdef unsigned int MV_CC_GetSDKVersion():
    return MV_CC_GetSDKVersion()
cdef int MV_CC_EnumerateTls():
    return MV_CC_EnumerateTls()
cdef int MV_CC_EnumDevices(unsigned int nTLayerType, MV_CC_DEVICE_INFO_LIST* pstDevList):
    return MV_CC_EnumDevices(nTLayerType,pstDevList)
cdef int MV_CC_EnumDevicesEx(unsigned int nTLayerType, MV_CC_DEVICE_INFO_LIST* pstDevList, const char* pManufacturerName):
    return MV_CC_EnumDevicesEx(nTLayerType,pstDevList,pManufacturerName)
cdef bool MV_CC_IsDeviceAccessible(MV_CC_DEVICE_INFO* pstDevInfo, unsigned int nAccessMode):
    return MV_CC_IsDeviceAccessible(pstDevInfo,nAccessMode)
cdef int MV_CC_SetSDKLogPath(const char * pSDKLogPath):
    return MV_CC_SetSDKLogPath(pSDKLogPath)
cdef int MV_CC_CreateHandle(void ** handle, const MV_CC_DEVICE_INFO* pstDevInfo):
    return MV_CC_CreateHandle(handle,pstDevInfo)
cdef int MV_CC_CreateHandleWithoutLog(void ** handle, const MV_CC_DEVICE_INFO* pstDevInfo):
    return MV_CC_CreateHandleWithoutLog(handle,pstDevInfo)
cdef int MV_CC_DestroyHandle(void * handle):
    return MV_CC_DestroyHandle(handle)
cdef int MV_CC_OpenDevice(void* handle, unsigned int nAccessMode = 1, unsigned short nSwitchoverKey = 0):
    return MV_CC_OpenDevice(handle,nAccessMode,nSwitchoverKey)
cdef int MV_CC_CloseDevice(void* handle):
    return MV_CC_CloseDevice(handle)
cdef bool MV_CC_IsDeviceConnected(void* handle):
    return MV_CC_IsDeviceConnected(handle)
cdef int MV_CC_RegisterImageCallBackEx(void* handle, void(__stdcall* cbOutput)(unsigned char * pData, MV_FRAME_OUT_INFO_EX* pFrameInfo, void* pUser),void* pUser):
    return MV_CC_RegisterImageCallBackEx(handle,cbOutput,pUser)
cdef int MV_CC_RegisterImageCallBackForRGB(void* handle, void(__stdcall* cbOutput)(unsigned char * pData, MV_FRAME_OUT_INFO_EX* pFrameInfo, void* pUser),void* pUser):
    return MV_CC_RegisterImageCallBackForRGB(handle,cbOutput,pUser)
cdef int MV_CC_RegisterImageCallBackForBGR(void* handle, void(__stdcall* cbOutput)(unsigned char * pData, MV_FRAME_OUT_INFO_EX* pFrameInfo, void* pUser),void* pUser):
    return MV_CC_RegisterImageCallBackForBGR(handle,cbOutput,pUser)
cdef int MV_CC_StartGrabbing(void* handle):
    return MV_CC_StartGrabbing(handle)
cdef int MV_CC_StopGrabbing(void* handle):
    return MV_CC_StopGrabbing(handle)
cdef int MV_CC_GetImageForRGB(void* handle, unsigned char * pData , unsigned int nDataSize, MV_FRAME_OUT_INFO_EX* pFrameInfo, int nMsec):
    return MV_CC_GetImageForRGB(handle,pData ,nDataSize,pFrameInfo,nMsec)
cdef int MV_CC_GetImageForBGR(void* handle, unsigned char * pData , unsigned int nDataSize, MV_FRAME_OUT_INFO_EX* pFrameInfo, int nMsec):
    return MV_CC_GetImageForBGR(handle,pData ,nDataSize,pFrameInfo,nMsec)
cdef int MV_CC_GetImageBuffer(void* handle, MV_FRAME_OUT* pFrame, unsigned int nMsec):
    return MV_CC_GetImageBuffer(handle,pFrame,nMsec)
cdef int MV_CC_FreeImageBuffer(void* handle, MV_FRAME_OUT* pFrame):
    return MV_CC_FreeImageBuffer(handle,pFrame)
cdef int MV_CC_GetOneFrameTimeout(void* handle, unsigned char * pData , unsigned int nDataSize, MV_FRAME_OUT_INFO_EX* pFrameInfo, unsigned int nMsec):
    return MV_CC_GetOneFrameTimeout(handle,pData ,nDataSize,pFrameInfo,nMsec)
cdef int MV_CC_ClearImageBuffer(void* handle):
    return MV_CC_ClearImageBuffer(handle)
cdef int MV_CC_Display(void* handle, void* hWnd):
    return MV_CC_Display(handle,hWnd)
cdef int MV_CC_DisplayOneFrame(void* handle, MV_DISPLAY_FRAME_INFO* pDisplayInfo):
    return MV_CC_DisplayOneFrame(handle,pDisplayInfo)
cdef int MV_CC_SetImageNodeNum(void* handle, unsigned int nNum):
    return MV_CC_SetImageNodeNum(handle,nNum)
cdef int MV_CC_GetDeviceInfo(void * handle, MV_CC_DEVICE_INFO* pstDevInfo):
    return MV_CC_GetDeviceInfo(handle,pstDevInfo)
cdef int MV_CC_GetAllMatchInfo(void* handle, MV_ALL_MATCH_INFO* pstInfo):
    return MV_CC_GetAllMatchInfo(handle,pstInfo)
cdef int MV_CC_GetIntValue(void* handle,const char* strKey,MVCC_INTVALUE *pIntValue):
    return MV_CC_GetIntValue(handle,strKey,pIntValue)
cdef int MV_CC_GetIntValueEx(void* handle,const char* strKey,MVCC_INTVALUE_EX *pIntValue):
    return MV_CC_GetIntValueEx(handle,strKey,pIntValue)
cdef int MV_CC_SetIntValue(void* handle,const char* strKey,unsigned int nValue):
    return MV_CC_SetIntValue(handle,strKey,nValue)
cdef int MV_CC_SetIntValueEx(void* handle,const char* strKey,long long nValue):
    return MV_CC_SetIntValueEx(handle,strKey,nValue)
cdef int MV_CC_GetEnumValue(void* handle,const char* strKey,MVCC_ENUMVALUE *pEnumValue):
    return MV_CC_GetEnumValue(handle,strKey,pEnumValue)
cdef int MV_CC_SetEnumValue(void* handle,const char* strKey,unsigned int nValue):
    return MV_CC_SetEnumValue(handle,strKey,nValue)
cdef int MV_CC_SetEnumValueByString(void* handle,const char* strKey,const char* sValue):
    return MV_CC_SetEnumValueByString(handle,strKey,sValue)
cdef int MV_CC_GetFloatValue(void* handle,const char* strKey,MVCC_FLOATVALUE *pFloatValue):
    return MV_CC_GetFloatValue(handle,strKey,pFloatValue)
cdef int MV_CC_SetFloatValue(void* handle,const char* strKey,float fValue):
    return MV_CC_SetFloatValue(handle,strKey,fValue)
cdef int MV_CC_GetBoolValue(void* handle,const char* strKey,bool *pBoolValue):
    return MV_CC_GetBoolValue(handle,strKey,pBoolValue)
cdef int MV_CC_SetBoolValue(void* handle,const char* strKey,bool bValue):
    return MV_CC_SetBoolValue(handle,strKey,bValue)
cdef int MV_CC_GetStringValue(void* handle,const char* strKey,MVCC_STRINGVALUE *pStringValue):
    return MV_CC_GetStringValue(handle,strKey,pStringValue)
cdef int MV_CC_SetStringValue(void* handle,const char* strKey,const char * sValue):
    return MV_CC_SetStringValue(handle,strKey,sValue)
cdef int MV_CC_SetCommandValue(void* handle,const char* strKey):
    return MV_CC_SetCommandValue(handle,strKey)
cdef int MV_CC_InvalidateNodes(void* handle):
    return MV_CC_InvalidateNodes(handle)
cdef int MV_CC_LocalUpgrade(void* handle, const void *pFilePathName):
    return MV_CC_LocalUpgrade(handle,pFilePathName)
cdef int MV_CC_GetUpgradeProcess(void* handle, unsigned int* pnProcess):
    return MV_CC_GetUpgradeProcess(handle,pnProcess)
cdef int MV_CC_ReadMemory(void* handle , void *pBuffer, long long nAddress, long long nLength):
    return MV_CC_ReadMemory(handle ,pBuffer,nAddress,nLength)
cdef int MV_CC_WriteMemory(void* handle , const void *pBuffer, long long nAddress, long long nLength):
    return MV_CC_WriteMemory(handle ,pBuffer,nAddress,nLength)
cdef int MV_CC_RegisterExceptionCallBack(void* handle, void(__stdcall* cbException)(unsigned int nMsgType, void* pUser), void* pUser):
    return MV_CC_RegisterExceptionCallBack(handle, cbException,pUser)
cdef int MV_CC_RegisterAllEventCallBack(void* handle, void(__stdcall* cbEvent)(MV_EVENT_OUT_INFO * pEventInfo, void* pUser), void* pUser):
    return MV_CC_RegisterAllEventCallBack(handle, cbEvent,pUser)
cdef int MV_CC_RegisterEventCallBackEx(void* handle, const char* pEventName,void(__stdcall* cbEvent)(MV_EVENT_OUT_INFO * pEventInfo, void* pUser), void* pUser):
    return MV_CC_RegisterEventCallBackEx(handle,pEventName,cbEvent,pUser)
cdef int MV_GIGE_ForceIpEx(void* handle, unsigned int nIP, unsigned int nSubNetMask, unsigned int nDefaultGateWay):
    return MV_GIGE_ForceIpEx(handle,nIP,nSubNetMask,nDefaultGateWay)
cdef int MV_GIGE_SetIpConfig(void* handle, unsigned int nType):
    return MV_GIGE_SetIpConfig(handle,nType)
cdef int MV_GIGE_SetNetTransMode(void* handle, unsigned int nType):
    return MV_GIGE_SetNetTransMode(handle,nType)
cdef int MV_GIGE_GetNetTransInfo(void* handle, MV_NETTRANS_INFO* pstInfo):
    return MV_GIGE_GetNetTransInfo(handle,pstInfo)
cdef int MV_GIGE_SetGvspTimeout(void* handle, unsigned int nMillisec):
    return MV_GIGE_SetGvspTimeout(handle,nMillisec)
cdef int MV_GIGE_GetGvspTimeout(void* handle, unsigned int* pnMillisec):
    return MV_GIGE_GetGvspTimeout(handle,pnMillisec)
cdef int MV_GIGE_SetGvcpTimeout(void* handle, unsigned int nMillisec):
    return MV_GIGE_SetGvcpTimeout(handle,nMillisec)
cdef int MV_GIGE_GetGvcpTimeout(void* handle, unsigned int* pnMillisec):
    return MV_GIGE_GetGvcpTimeout(handle,pnMillisec)
cdef int MV_GIGE_SetRetryGvcpTimes(void* handle, unsigned int nRetryGvcpTimes):
    return MV_GIGE_SetRetryGvcpTimes(handle,nRetryGvcpTimes)
cdef int MV_GIGE_GetRetryGvcpTimes(void* handle, unsigned int* pnRetryGvcpTimes):
    return MV_GIGE_GetRetryGvcpTimes(handle,pnRetryGvcpTimes)
cdef int MV_CC_GetOptimalPacketSize(void* handle):
    return MV_CC_GetOptimalPacketSize(handle)
cdef int MV_GIGE_SetResend(void* handle, unsigned int bEnable, unsigned int nMaxResendPercent = 10, unsigned int nResendTimeout = 50):
    return MV_GIGE_SetResend(handle,bEnable,nMaxResendPercent,nResendTimeout)
cdef int MV_GIGE_SetResendMaxRetryTimes(void* handle, unsigned int nRetryTimes):
    return MV_GIGE_SetResendMaxRetryTimes(handle,nRetryTimes)
cdef int MV_GIGE_GetResendMaxRetryTimes(void* handle, unsigned int* pnRetryTimes):
    return MV_GIGE_GetResendMaxRetryTimes(handle,pnRetryTimes)
cdef int MV_GIGE_SetResendTimeInterval(void* handle, unsigned int nMillisec):
    return MV_GIGE_SetResendTimeInterval(handle,nMillisec)
cdef int MV_GIGE_GetResendTimeInterval(void* handle, unsigned int* pnMillisec):
    return MV_GIGE_GetResendTimeInterval(handle,pnMillisec)
cdef int MV_GIGE_SetTransmissionType(void* handle, MV_TRANSMISSION_TYPE * pstTransmissionType):
    return MV_GIGE_SetTransmissionType(handle,pstTransmissionType)
cdef int MV_GIGE_IssueActionCommand(MV_ACTION_CMD_INFO* pstActionCmdInfo, MV_ACTION_CMD_RESULT_LIST* pstActionCmdResults):
    return MV_GIGE_IssueActionCommand(pstActionCmdInfo,pstActionCmdResults)
cdef int MV_XML_GetGenICamXML(void* handle, unsigned char* pData, unsigned int nDataSize, unsigned int* pnDataLen):
    return MV_XML_GetGenICamXML(handle,pData,nDataSize,pnDataLen)
cdef int MV_CC_SaveImageEx2(void* handle, MV_SAVE_IMAGE_PARAM_EX* pSaveParam):
    return MV_CC_SaveImageEx2(handle,pSaveParam)
cdef int MV_CC_RotateImage(void* handle, MV_CC_ROTATE_IMAGE_PARAM* pstRotateParam):
    return MV_CC_RotateImage(handle,pstRotateParam)
cdef int MV_CC_FlipImage(void* handle, MV_CC_FLIP_IMAGE_PARAM* pstFlipParam):
    return MV_CC_FlipImage(handle,pstFlipParam)
cdef int MV_CC_ConvertPixelType(void* handle, MV_CC_PIXEL_CONVERT_PARAM* pstCvtParam):
    return MV_CC_ConvertPixelType(handle,pstCvtParam)
cdef int MV_CC_SetBayerCvtQuality(void* handle, unsigned int BayerCvtQuality):
    return MV_CC_SetBayerCvtQuality(handle,BayerCvtQuality)
cdef int MV_CC_SetBayerGammaParam(void* handle, MV_CC_GAMMA_PARAM* pstGammaParam):
    return MV_CC_SetBayerGammaParam(handle,pstGammaParam)
cdef int MV_CC_HB_Decode(void* handle, MV_CC_HB_DECODE_PARAM* pstDecodeParam):
    return MV_CC_HB_Decode(handle,pstDecodeParam)
cdef int MV_CC_FeatureSave(void* handle, const char* pFileName):
    return MV_CC_FeatureSave(handle,pFileName)
cdef int MV_CC_FeatureLoad(void* handle, const char* pFileName):
    return MV_CC_FeatureLoad(handle,pFileName)
cdef int MV_CC_FileAccessRead(void* handle, MV_CC_FILE_ACCESS * pstFileAccess):
    return MV_CC_FileAccessRead(handle,pstFileAccess)
cdef int MV_CC_FileAccessWrite(void* handle, MV_CC_FILE_ACCESS * pstFileAccess):
    return MV_CC_FileAccessWrite(handle,pstFileAccess)
cdef int MV_CC_GetFileAccessProgress(void* handle, MV_CC_FILE_ACCESS_PROGRESS * pstFileAccessProgress):
    return MV_CC_GetFileAccessProgress(handle,pstFileAccessProgress)
cdef int MV_CC_StartRecord(void* handle, MV_CC_RECORD_PARAM* pstRecordParam):
    return MV_CC_StartRecord(handle,pstRecordParam)
cdef int MV_CC_InputOneFrame(void* handle, MV_CC_INPUT_FRAME_INFO * pstInputFrameInfo):
    return MV_CC_InputOneFrame(handle,pstInputFrameInfo)
cdef int MV_CC_StopRecord(void* handle):
    return MV_CC_StopRecord(handle)
cdef int MV_CC_GetImageInfo(void* handle, MV_IMAGE_BASIC_INFO* pstInfo):
    return MV_CC_GetImageInfo(handle,pstInfo)
cdef void* MV_CC_GetTlProxy(void* handle):
    return MV_CC_GetTlProxy(handle)
cdef int MV_XML_GetRootNode(void* handle, MV_XML_NODE_FEATURE* pstNode):
    return MV_XML_GetRootNode(handle,pstNode)
cdef int MV_XML_GetChildren(void* handle, MV_XML_NODE_FEATURE* pstNode, MV_XML_NODES_LIST* pstNodesList):
    return MV_XML_GetChildren(handle,pstNode,pstNodesList)
cdef int MV_XML_GetNodeFeature(void* handle, MV_XML_NODE_FEATURE* pstNode, void* pstFeature):
    return MV_XML_GetNodeFeature(handle,pstNode,pstFeature)
cdef int MV_XML_UpdateNodeFeature(void* handle, MV_XML_InterfaceType enType, void* pstFeature):
    return MV_XML_UpdateNodeFeature(handle,enType,pstFeature)
cdef int MV_XML_RegisterUpdateCallBack(void* handle, void(__stdcall* cbUpdate)(MV_XML_InterfaceType enType, void* pstFeature, MV_XML_NODES_LIST* pstNodesList, void* pUser),void* pUser):
    return MV_XML_RegisterUpdateCallBack(handle, cbUpdate,pUser)
cdef int MV_CC_GetOneFrame(void* handle, unsigned char * pData , unsigned int nDataSize, MV_FRAME_OUT_INFO* pFrameInfo):
    return MV_CC_GetOneFrame(handle,pData ,nDataSize,pFrameInfo)
cdef int MV_CC_GetOneFrameEx(void* handle, unsigned char * pData , unsigned int nDataSize, MV_FRAME_OUT_INFO_EX* pFrameInfo):
    return MV_CC_GetOneFrameEx(handle,pData ,nDataSize,pFrameInfo)
cdef int MV_CC_RegisterImageCallBack(void* handle, void(__stdcall* cbOutput)(unsigned char * pData, MV_FRAME_OUT_INFO* pFrameInfo, void* pUser),void* pUser):
    return MV_CC_RegisterImageCallBack(handle, cbOutput,pUser)
cdef int MV_CC_SaveImage(MV_SAVE_IMAGE_PARAM* pSaveParam):
    return MV_CC_SaveImage(pSaveParam)
cdef int MV_CC_SaveImageEx(MV_SAVE_IMAGE_PARAM_EX* pSaveParam):
    return MV_CC_SaveImageEx(pSaveParam)
cdef int MV_GIGE_ForceIp(void* handle, unsigned int nIP):
    return MV_GIGE_ForceIp(handle,nIP)
cdef int MV_CC_RegisterEventCallBack(void* handle, void(__stdcall* cbEvent)(unsigned int nExternalEventId, void* pUser),void* pUser):
    return MV_CC_RegisterEventCallBack(handle, cbEvent,pUser)
cdef int MV_CC_GetWidth(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetWidth(handle,pstValue)
cdef int MV_CC_SetWidth(void* handle, const unsigned int nValue):
    return MV_CC_SetWidth(handle,nValue)
cdef int MV_CC_GetHeight(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetHeight(handle,pstValue)
cdef int MV_CC_SetHeight(void* handle, const unsigned int nValue):
    return MV_CC_SetHeight(handle,nValue)
cdef int MV_CC_GetAOIoffsetX(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetAOIoffsetX(handle,pstValue)
cdef int MV_CC_SetAOIoffsetX(void* handle, const unsigned int nValue):
    return MV_CC_SetAOIoffsetX(handle,nValue)
cdef int MV_CC_GetAOIoffsetY(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetAOIoffsetY(handle,pstValue)
cdef int MV_CC_SetAOIoffsetY(void* handle, const unsigned int nValue):
    return MV_CC_SetAOIoffsetY(handle,nValue)
cdef int MV_CC_GetAutoExposureTimeLower(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetAutoExposureTimeLower(handle,pstValue)
cdef int MV_CC_SetAutoExposureTimeLower(void* handle, const unsigned int nValue):
    return MV_CC_SetAutoExposureTimeLower(handle,nValue)
cdef int MV_CC_GetAutoExposureTimeUpper(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetAutoExposureTimeUpper(handle,pstValue)
cdef int MV_CC_SetAutoExposureTimeUpper(void* handle, const unsigned int nValue):
    return MV_CC_SetAutoExposureTimeUpper(handle,nValue)
cdef int MV_CC_GetBrightness(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetBrightness(handle,pstValue)
cdef int MV_CC_SetBrightness(void* handle, const unsigned int nValue):
    return MV_CC_SetBrightness(handle,nValue)
cdef int MV_CC_GetFrameRate(void* handle, MVCC_FLOATVALUE* pstValue):
    return MV_CC_GetFrameRate(handle,pstValue)
cdef int MV_CC_SetFrameRate(void* handle, const float fValue):
    return MV_CC_SetFrameRate(handle,fValue)
cdef int MV_CC_GetGain(void* handle, MVCC_FLOATVALUE* pstValue):
    return MV_CC_GetGain(handle,pstValue)
cdef int MV_CC_SetGain(void* handle, const float fValue):
    return MV_CC_SetGain(handle,fValue)
cdef int MV_CC_GetExposureTime(void* handle, MVCC_FLOATVALUE* pstValue):
    return MV_CC_GetExposureTime(handle,pstValue)
cdef int MV_CC_SetExposureTime(void* handle, const float fValue):
    return MV_CC_SetExposureTime(handle,fValue)
cdef int MV_CC_GetPixelFormat(void* handle, MVCC_ENUMVALUE* pstValue):
    return MV_CC_GetPixelFormat(handle,pstValue)
cdef int MV_CC_SetPixelFormat(void* handle, const unsigned int nValue):
    return MV_CC_SetPixelFormat(handle,nValue)
cdef int MV_CC_GetAcquisitionMode(void* handle, MVCC_ENUMVALUE* pstValue):
    return MV_CC_GetAcquisitionMode(handle,pstValue)
cdef int MV_CC_SetAcquisitionMode(void* handle, const unsigned int nValue):
    return MV_CC_SetAcquisitionMode(handle,nValue)
cdef int MV_CC_GetGainMode(void* handle, MVCC_ENUMVALUE* pstValue):
    return MV_CC_GetGainMode(handle,pstValue)
cdef int MV_CC_SetGainMode(void* handle, const unsigned int nValue):
    return MV_CC_SetGainMode(handle,nValue)
cdef int MV_CC_GetExposureAutoMode(void* handle, MVCC_ENUMVALUE* pstValue):
    return MV_CC_GetExposureAutoMode(handle,pstValue)
cdef int MV_CC_SetExposureAutoMode(void* handle, const unsigned int nValue):
    return MV_CC_SetExposureAutoMode(handle,nValue)
cdef int MV_CC_GetTriggerMode(void* handle, MVCC_ENUMVALUE* pstValue):
    return MV_CC_GetTriggerMode(handle,pstValue)
cdef int MV_CC_SetTriggerMode(void* handle, const unsigned int nValue):
    return MV_CC_SetTriggerMode(handle,nValue)
cdef int MV_CC_GetTriggerDelay(void* handle, MVCC_FLOATVALUE* pstValue):
    return MV_CC_GetTriggerDelay(handle,pstValue)
cdef int MV_CC_SetTriggerDelay(void* handle, const float fValue):
    return MV_CC_SetTriggerDelay(handle,fValue)
cdef int MV_CC_GetTriggerSource(void* handle, MVCC_ENUMVALUE* pstValue):
    return MV_CC_GetTriggerSource(handle,pstValue)
cdef int MV_CC_SetTriggerSource(void* handle, const unsigned int nValue):
    return MV_CC_SetTriggerSource(handle,nValue)
cdef int MV_CC_TriggerSoftwareExecute(void* handle):
    return MV_CC_TriggerSoftwareExecute(handle)
cdef int MV_CC_GetGammaSelector(void* handle, MVCC_ENUMVALUE* pstValue):
    return MV_CC_GetGammaSelector(handle,pstValue)
cdef int MV_CC_SetGammaSelector(void* handle, const unsigned int nValue):
    return MV_CC_SetGammaSelector(handle,nValue)
cdef int MV_CC_GetGamma(void* handle, MVCC_FLOATVALUE* pstValue):
    return MV_CC_GetGamma(handle,pstValue)
cdef int MV_CC_SetGamma(void* handle, const float fValue):
    return MV_CC_SetGamma(handle,fValue)
cdef int MV_CC_GetSharpness(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetSharpness(handle,pstValue)
cdef int MV_CC_SetSharpness(void* handle, const unsigned int nValue):
    return MV_CC_SetSharpness(handle,nValue)
cdef int MV_CC_GetHue(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetHue(handle,pstValue)
cdef int MV_CC_SetHue(void* handle, const unsigned int nValue):
    return MV_CC_SetHue(handle,nValue)
cdef int MV_CC_GetSaturation(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetSaturation(handle,pstValue)
cdef int MV_CC_SetSaturation(void* handle, const unsigned int nValue):
    return MV_CC_SetSaturation(handle,nValue)
cdef int MV_CC_GetBalanceWhiteAuto(void* handle, MVCC_ENUMVALUE* pstValue):
    return MV_CC_GetBalanceWhiteAuto(handle,pstValue)
cdef int MV_CC_SetBalanceWhiteAuto(void* handle, const unsigned int nValue):
    return MV_CC_SetBalanceWhiteAuto(handle,nValue)
cdef int MV_CC_GetBalanceRatioRed(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetBalanceRatioRed(handle,pstValue)
cdef int MV_CC_SetBalanceRatioRed(void* handle, const unsigned int nValue):
    return MV_CC_SetBalanceRatioRed(handle,nValue)
cdef int MV_CC_GetBalanceRatioGreen(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetBalanceRatioGreen(handle,pstValue)
cdef int MV_CC_SetBalanceRatioGreen(void* handle, const unsigned int nValue):
    return MV_CC_SetBalanceRatioGreen(handle,nValue)
cdef int MV_CC_GetBalanceRatioBlue(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetBalanceRatioBlue(handle,pstValue)
cdef int MV_CC_SetBalanceRatioBlue(void* handle, const unsigned int nValue):
    return MV_CC_SetBalanceRatioBlue(handle,nValue)
cdef int MV_CC_GetFrameSpecInfoAbility(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetFrameSpecInfoAbility(handle,pstValue)
cdef int MV_CC_SetFrameSpecInfoAbility(void* handle, const unsigned int nValue):
    return MV_CC_SetFrameSpecInfoAbility(handle,nValue)
cdef int MV_CC_GetDeviceUserID(void* handle, MVCC_STRINGVALUE* pstValue):
    return MV_CC_GetDeviceUserID(handle,pstValue)
cdef int MV_CC_SetDeviceUserID(void* handle, const char* chValue):
    return MV_CC_SetDeviceUserID(handle,chValue)
cdef int MV_CC_GetBurstFrameCount(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetBurstFrameCount(handle,pstValue)
cdef int MV_CC_SetBurstFrameCount(void* handle, const unsigned int nValue):
    return MV_CC_SetBurstFrameCount(handle,nValue)
cdef int MV_CC_GetAcquisitionLineRate(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetAcquisitionLineRate(handle,pstValue)
cdef int MV_CC_SetAcquisitionLineRate(void* handle, const unsigned int nValue):
    return MV_CC_SetAcquisitionLineRate(handle,nValue)
cdef int MV_CC_GetHeartBeatTimeout(void* handle, MVCC_INTVALUE* pstValue):
    return MV_CC_GetHeartBeatTimeout(handle,pstValue)
cdef int MV_CC_SetHeartBeatTimeout(void* handle, const unsigned int nValue):
    return MV_CC_SetHeartBeatTimeout(handle,nValue)
cdef int MV_GIGE_GetGevSCPSPacketSize(void* handle, MVCC_INTVALUE* pstValue):
    return MV_GIGE_GetGevSCPSPacketSize(handle,pstValue)
cdef int MV_GIGE_SetGevSCPSPacketSize(void* handle, const unsigned int nValue):
    return MV_GIGE_SetGevSCPSPacketSize(handle,nValue)
cdef int MV_GIGE_GetGevSCPD(void* handle, MVCC_INTVALUE* pstValue):
    return MV_GIGE_GetGevSCPD(handle,pstValue)
cdef int MV_GIGE_SetGevSCPD(void* handle, const unsigned int nValue):
    return MV_GIGE_SetGevSCPD(handle,nValue)
cdef int MV_GIGE_GetGevSCDA(void* handle, unsigned int* pnIP):
    return MV_GIGE_GetGevSCDA(handle,pnIP)
cdef int MV_GIGE_SetGevSCDA(void* handle, unsigned int nIP):
    return MV_GIGE_SetGevSCDA(handle,nIP)
cdef int MV_GIGE_GetGevSCSP(void* handle, unsigned int* pnPort):
    return MV_GIGE_GetGevSCSP(handle,pnPort)
cdef int MV_GIGE_SetGevSCSP(void* handle, unsigned int nPort):
    return MV_GIGE_SetGevSCSP(handle,nPort)
cdef int MV_CAML_SetDeviceBauderate(void* handle, unsigned int nBaudrate):
    return MV_CAML_SetDeviceBauderate(handle,nBaudrate)
cdef int MV_CAML_GetDeviceBauderate(void* handle, unsigned int* pnCurrentBaudrate):
    return MV_CAML_GetDeviceBauderate(handle,pnCurrentBaudrate)
cdef int MV_CAML_GetSupportBauderates(void* handle, unsigned int* pnBaudrateAblity):
    return MV_CAML_GetSupportBauderates(handle,pnBaudrateAblity)
cdef int MV_CAML_SetGenCPTimeOut(void* handle, unsigned int nMillisec):
    return MV_CAML_SetGenCPTimeOut(handle,nMillisec)
cdef int MV_USB_SetTransferSize(void* handle, unsigned int nTransferSize):
    return MV_USB_SetTransferSize(handle,nTransferSize)
cdef int MV_USB_GetTransferSize(void* handle, unsigned int* pnTransferSize):
    return MV_USB_GetTransferSize(handle,pnTransferSize)
cdef int MV_USB_SetTransferWays(void* handle, unsigned int nTransferWays):
    return MV_USB_SetTransferWays(handle,nTransferWays)
cdef int MV_USB_GetTransferWays(void* handle, unsigned int* pnTransferWays):
    return MV_USB_GetTransferWays(handle,pnTransferWays)


