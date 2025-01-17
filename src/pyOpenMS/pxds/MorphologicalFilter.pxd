from ProgressLogger cimport *
from DefaultParamHandler cimport *
from MSExperiment cimport *
from MSSpectrum cimport *
from Peak1D cimport *
from ChromatogramPeak cimport *

cdef extern from "<OpenMS/FILTERING/BASELINE/MorphologicalFilter.h>" namespace "OpenMS":

    cdef cppclass MorphologicalFilter(DefaultParamHandler,ProgressLogger):
        # wrap-inherits:
        #    DefaultParamHandler
        #    ProgressLogger

        MorphologicalFilter() nogil except +
        # private
        MorphologicalFilter(MorphologicalFilter) nogil except + # wrap-ignore

        void filter(MSSpectrum & spectrum) nogil except +
        void filterExperiment(MSExperiment & exp) nogil except +

