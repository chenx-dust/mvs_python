from setuptools import setup, Extension
from Cython.Build import cythonize

setup(
    name='mvs',
    version='0.0.1',
    ext_modules=cythonize([
        Extension(name="mvs.mvs_cython", sources=["mvs_cython.pyx"],
                  libraries=["/opt/MVS/lib/64/libMvCameraControl.so",
                             "/opt/MVS/lib/64/libMvUsb3vTL.so",
                             "/opt/MVS/lib/64/libMVGigEVisionSDK.so",
                             "/opt/MVS/lib/64/libMediaProcess.so",
                             "/opt/MVS/lib/64/libFormatConversion.so",
                             "/opt/MVS/lib/64/libMVRender.so"])
    ]),
    package_dir={'mvs': 'mvs'},
    zip_safe=False,
    requires=['cython']
)