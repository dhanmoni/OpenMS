from libcpp.vector cimport vector as libcpp_vector
from Types cimport *
from ConsensusMap cimport *

cdef extern from "<OpenMS/ANALYSIS/MAPMATCHING/ConsensusMapNormalizerAlgorithmQuantile.h>" namespace "OpenMS":

    cdef cppclass ConsensusMapNormalizerAlgorithmQuantile:

        ConsensusMapNormalizerAlgorithmQuantile() nogil except +
        # private
        ConsensusMapNormalizerAlgorithmQuantile(ConsensusMapNormalizerAlgorithmQuantile) nogil except + #wrap-ignore

        void normalizeMaps(ConsensusMap & input_map) nogil except +

        void resample(libcpp_vector[ double ] & data_in, libcpp_vector[ double ] & data_out, UInt n_resampling_points) nogil except +
        void extractIntensityVectors(ConsensusMap & map_, libcpp_vector[ libcpp_vector[ double ] ] & out_intensities) nogil except +
        void setNormalizedIntensityValues(libcpp_vector[ libcpp_vector[ double ] ] & feature_ints, ConsensusMap & map_) nogil except +

