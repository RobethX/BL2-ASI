#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UInterpTrackAkRTPC(py::module &m)
{
    py::class_< UInterpTrackAkRTPC,  UInterpTrackFloatBase   >(m, "UInterpTrackAkRTPC")
		.def_static("StaticClass", &UInterpTrackAkRTPC::StaticClass, py::return_value_policy::reference)
        .def_readwrite("AkRtpc", &UInterpTrackAkRTPC::AkRtpc)
          ;
}