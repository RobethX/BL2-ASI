#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UInterpTrackInstAudioMaster(py::module &m)
{
    py::class_< UInterpTrackInstAudioMaster,  UInterpTrackInst   >(m, "UInterpTrackInstAudioMaster")
		.def_static("StaticClass", &UInterpTrackInstAudioMaster::StaticClass, py::return_value_policy::reference)
          ;
}