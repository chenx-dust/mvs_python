import mvs_cython


class MvCamera():
    def __init__(self):
        self.handle: mvs_cython.void_pt

    @staticmethod
    def MV_CC_GetSDKVersion():
        return mvs_cython.MV_CC_GetSDKVersion()

    @staticmethod
    def MV_CC_EnumDevices(nTLayerType, stDevList):
        return mvs_cython.MV_CC_EnumDevices(nTLayerType, stDevList)

    def MV_CC_CreateHandle(self, stDevInfo):
        mvs_cython.MV_CC_DestroyHandle(self.handle)
        return mvs_cython.MV_CC_CreateHandle(self.handle, stDevInfo)

    def MV_CC_CreateHandleWithoutLog(self, stDevInfo):
        mvs_cython.MV_CC_DestroyHandle(self.handle)
        return mvs_cython.MV_CC_CreateHandleWithoutLog(self.handle, stDevInfo)

    def MV_CC_DestroyHandle(self):
        if self.handle is not None:
            return mvs_cython.MV_CC_DestroyHandle(self.handle)
        else:
            return True

    def __getattr__(self, item):
        def wrapper(*args, **kwargs):
            return getattr(mvs_cython, item)(self.handle, *args, **kwargs)
        return wrapper
