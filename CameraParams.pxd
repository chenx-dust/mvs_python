cdef unsigned int MV_UNKNOW_DEVICE = 0x00000000
cdef unsigned int MV_GIGE_DEVICE = 0x00000001
cdef unsigned int MV_1394_DEVICE = 0x00000002
cdef unsigned int MV_USB_DEVICE = 0x00000004
cdef unsigned int MV_CAMERALINK_DEVICE = 0x00000008
cdef unsigned int INFO_MAX_BUFFER_SIZE = 64
cdef unsigned int MV_MAX_TLS_NUM = 8
cdef unsigned int MV_MAX_DEVICE_NUM = 256
cdef unsigned int MV_IP_CFG_STATIC = 0x05000000
cdef unsigned int MV_IP_CFG_DHCP = 0x06000000
cdef unsigned int MV_IP_CFG_LLA = 0x04000000
cdef unsigned int MV_NET_TRANS_DRIVER = 0x00000001
cdef unsigned int MV_NET_TRANS_SOCKET = 0x00000002
cdef unsigned int MV_MATCH_TYPE_NET_DETECT = 0x00000001
cdef unsigned int MV_MATCH_TYPE_USB_DETECT = 0x00000002
cdef unsigned int MV_MAX_XML_NODE_NUM_C = 128
cdef unsigned int MV_MAX_XML_NODE_STRLEN_C = 64
cdef unsigned int MV_MAX_XML_STRVALUE_STRLEN_C = 64
cdef unsigned int MV_MAX_XML_DISC_STRLEN_C = 512
cdef unsigned int MV_MAX_XML_ENTRY_NUM = 10
cdef unsigned int MV_MAX_XML_PARENTS_NUM = 8
cdef unsigned int MV_MAX_XML_SYMBOLIC_STRLEN_C = 64
cdef unsigned int MV_MAX_XML_SYMBOLIC_NUM = 64
cdef unsigned int MV_EXCEPTION_DEV_DISCONNECT = 0x00008001
cdef unsigned int MV_EXCEPTION_VERSION_CHECK = 0x00008002
cdef unsigned int MV_ACCESS_Exclusive = 1
cdef unsigned int MV_ACCESS_ExclusiveWithSwitch = 2
cdef unsigned int MV_ACCESS_Control = 3
cdef unsigned int MV_ACCESS_ControlWithSwitch = 4
cdef unsigned int MV_ACCESS_ControlSwitchEnable = 5
cdef unsigned int MV_ACCESS_ControlSwitchEnableWithKey = 6
cdef unsigned int MV_ACCESS_Monitor = 7
cdef unsigned int MAX_EVENT_NAME_SIZE = 128

ctypedef char bool

cdef extern from "/opt/MVS/include/CameraParams.h":
    ctypedef struct MV_GIGE_DEVICE_INFO:
        pass
    ctypedef struct MV_USB3_DEVICE_INFO:
        pass
    ctypedef struct MV_CamL_DEV_INFO:
        pass
    ctypedef struct MV_CC_DEVICE_INFO:
        pass
    ctypedef struct MV_NETTRANS_INFO:
        pass
    ctypedef struct MV_CC_DEVICE_INFO_LIST:
        pass
    ctypedef struct MV_CHUNK_DATA_CONTENT:
        pass
    ctypedef struct MV_FRAME_OUT_INFO:
        pass
    ctypedef struct MV_FRAME_OUT_INFO_EX:
        pass
    ctypedef struct MV_FRAME_OUT:
        pass
    ctypedef struct MV_DISPLAY_FRAME_INFO:
        pass
    cdef enum MV_SAVE_IAMGE_TYPE:
        MV_Image_Undefined                 = 0,
        MV_Image_Bmp                       = 1,
        MV_Image_Jpeg                      = 2,
        MV_Image_Png                       = 3,
        MV_Image_Tif                       = 4,
    ctypedef struct MV_SAVE_IMAGE_PARAM:
        pass
    ctypedef struct MV_SAVE_IMAGE_PARAM_EX:
        pass
    ctypedef enum MV_IMG_ROTATION_ANGLE:
        MV_IMAGE_ROTATE_90                  = 1,
        MV_IMAGE_ROTATE_180                 = 2,
        MV_IMAGE_ROTATE_270                 = 3,
    ctypedef struct MV_CC_ROTATE_IMAGE_PARAM:
        pass
    ctypedef enum MV_IMG_FLIP_TYPE:
        MV_FLIP_VERTICAL                    = 1,
        MV_FLIP_HORIZONTAL                  = 2,
    ctypedef struct MV_CC_FLIP_IMAGE_PARAM:
        pass
    ctypedef struct MV_CC_PIXEL_CONVERT_PARAM:
        pass
    ctypedef enum MV_CC_GAMMA_TYPE:
        MV_CC_GAMMA_TYPE_NONE               = 0,
        MV_CC_GAMMA_TYPE_VALUE              = 1,
        MV_CC_GAMMA_TYPE_USER_CURVE         = 2,
        MV_CC_GAMMA_TYPE_LRGB2SRGB          = 3,
        MV_CC_GAMMA_TYPE_SRGB2LRGB          = 4,
    ctypedef struct MV_CC_GAMMA_PARAM:
        pass
    ctypedef struct MV_CC_FRAME_SPEC_INFO:
        pass
    ctypedef struct MV_CC_HB_DECODE_PARAM:
        pass
    ctypedef enum MV_RECORD_FORMAT_TYPE:
        MV_FormatType_Undefined     = 0,
        MV_FormatType_AVI           = 1,
    ctypedef struct MV_CC_RECORD_PARAM:
        pass
    ctypedef struct MV_CC_INPUT_FRAME_INFO:
        pass
    ctypedef enum MV_CAM_ACQUISITION_MODE:
        MV_ACQ_MODE_SINGLE      = 0,
        MV_ACQ_MODE_MUTLI       = 1,
        MV_ACQ_MODE_CONTINUOUS  = 2,
    ctypedef enum MV_CAM_GAIN_MODE:
        MV_GAIN_MODE_OFF        = 0,
        MV_GAIN_MODE_ONCE       = 1,
        MV_GAIN_MODE_CONTINUOUS = 2,
    ctypedef enum MV_CAM_EXPOSURE_MODE:
        MV_EXPOSURE_MODE_TIMED          = 0,
        MV_EXPOSURE_MODE_TRIGGER_WIDTH  = 1,
    ctypedef enum MV_CAM_EXPOSURE_AUTO_MODE:
        MV_EXPOSURE_AUTO_MODE_OFF        = 0,
        MV_EXPOSURE_AUTO_MODE_ONCE       = 1,
        MV_EXPOSURE_AUTO_MODE_CONTINUOUS = 2,
    ctypedef enum MV_CAM_TRIGGER_MODE:
        MV_TRIGGER_MODE_OFF         = 0,
        MV_TRIGGER_MODE_ON          = 1,
    ctypedef enum MV_CAM_GAMMA_SELECTOR:
        MV_GAMMA_SELECTOR_USER      = 1,
        MV_GAMMA_SELECTOR_SRGB      = 2,
    ctypedef enum MV_CAM_BALANCEWHITE_AUTO:
        MV_BALANCEWHITE_AUTO_OFF            = 0,
        MV_BALANCEWHITE_AUTO_ONCE           = 2,
        MV_BALANCEWHITE_AUTO_CONTINUOUS     = 1,
    ctypedef enum MV_CAM_TRIGGER_SOURCE:
        MV_TRIGGER_SOURCE_LINE0             = 0,
        MV_TRIGGER_SOURCE_LINE1             = 1,
        MV_TRIGGER_SOURCE_LINE2             = 2,
        MV_TRIGGER_SOURCE_LINE3             = 3,
        MV_TRIGGER_SOURCE_COUNTER0          = 4,
        MV_TRIGGER_SOURCE_SOFTWARE          = 7,
        MV_TRIGGER_SOURCE_FrequencyConverter= 8,
    ctypedef enum MV_GIGE_TRANSMISSION_TYPE:
        MV_GIGE_TRANSTYPE_UNICAST                = 0x0,
        MV_GIGE_TRANSTYPE_MULTICAST              = 0x1,
        MV_GIGE_TRANSTYPE_LIMITEDBROADCAST       = 0x2,
        MV_GIGE_TRANSTYPE_SUBNETBROADCAST        = 0x3,
        MV_GIGE_TRANSTYPE_CAMERADEFINED          = 0x4,
        MV_GIGE_TRANSTYPE_UNICAST_DEFINED_PORT   = 0x5,
        MV_GIGE_TRANSTYPE_UNICAST_WITHOUT_RECV   = 0x00010000,
        MV_GIGE_TRANSTYPE_MULTICAST_WITHOUT_RECV = 0x00010001,
    cdef enum MV_XML_InterfaceType:
        IFT_IValue,
        IFT_IBase,
        IFT_IInteger,
        IFT_IBoolean,
        IFT_ICommand,
        IFT_IFloat,
        IFT_IString,
        IFT_IRegister,
        IFT_ICategory,
        IFT_IEnumeration,
        IFT_IEnumEntry,
        IFT_IPort,
    cdef enum MV_XML_AccessMode:
        AM_NI,
        AM_NA,
        AM_WO,
        AM_RO,
        AM_RW,
        AM_Undefined,
        AM_CycleDetect,
    cdef enum MV_XML_Visibility:
        V_Beginner      = 0,
        V_Expert        = 1,
        V_Guru          = 2,
        V_Invisible     = 3,
        V_Undefined     = 99
    ctypedef struct MV_EVENT_OUT_INFO:
        pass
    ctypedef struct MV_CC_FILE_ACCESS:
        pass
    ctypedef struct MV_CC_FILE_ACCESS_PROGRESS:
        pass
    ctypedef struct MV_TRANSMISSION_TYPE:
        pass
    ctypedef struct MV_ACTION_CMD_INFO:
        pass
    ctypedef struct MV_ACTION_CMD_RESULT:
        pass
    ctypedef struct MV_ACTION_CMD_RESULT_LIST:
        pass
    ctypedef struct MV_XML_NODE_FEATURE:
        pass
    ctypedef struct MV_XML_NODES_LIST:
        pass
    ctypedef struct MV_XML_FEATURE_Value:
        pass
    ctypedef struct MV_XML_FEATURE_Base:
        pass
    ctypedef struct MV_XML_FEATURE_Integer:
        pass
    ctypedef struct MV_XML_FEATURE_Boolean:
        pass
    ctypedef struct MV_XML_FEATURE_Command:
        pass
    ctypedef struct MV_XML_FEATURE_Float:
        pass
    ctypedef struct MV_XML_FEATURE_String:
        pass
    ctypedef struct MV_XML_FEATURE_Register:
        pass
    ctypedef struct MV_XML_FEATURE_Category:
        pass
    ctypedef struct MV_XML_FEATURE_EnumEntry:
        pass
    ctypedef struct MV_XML_FEATURE_Enumeration:
        pass
    ctypedef struct MV_XML_FEATURE_Port:
        pass
    ctypedef struct MV_XML_CAMERA_FEATURE:
        pass
    ctypedef struct MVCC_ENUMVALUE:
        pass
    ctypedef struct MVCC_INTVALUE:
        pass
    ctypedef struct MVCC_INTVALUE_EX:
        pass
    ctypedef struct MVCC_FLOATVALUE:
        pass
    ctypedef struct MVCC_STRINGVALUE:
        pass
    ctypedef struct MV_ALL_MATCH_INFO:
        pass
    ctypedef struct MV_IMAGE_BASIC_INFO:
        pass

