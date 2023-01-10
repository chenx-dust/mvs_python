from setuptools import setup, Extension
from Cython.Build import cythonize

setup(
    name='Hello world app',
    ext_modules=cythonize([
        Extension("mvs", ["mvs_cython.pyx"],
                  libraries=["/opt/MVS/lib/64/libMvCameraControl.so"])
    ]),
    zip_safe=False,
)