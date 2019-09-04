#!python

from distutils.core import setup
from Cython.Build import cythonize

setup(
	name="copt",
    ext_modules = cythonize("copt.pyx")  # cython optimized stuff
)
