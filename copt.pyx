#cython: language_level=3

from cpython cimport datetime

datetime.import_datetime()

cpdef datetime.datetime i64todt(long long int x):
	cdef int Y = (x // 10**8)
	cdef int m = (x // 10**6)%(10**2)
	cdef int d = (x // 10**4)%(10**2)
	cdef int H = (x // 10**2)%(10**2)
	cdef int M = (x // 10**0)%(10**2)
	return datetime.datetime_new(Y, m, d, H, M, 0, 0, None)