#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_USeqEvent_ConstraintBroken(py::module &m)
{
    py::class_< USeqEvent_ConstraintBroken,  USequenceEvent   >(m, "USeqEvent_ConstraintBroken")
		.def_static("StaticClass", &USeqEvent_ConstraintBroken::StaticClass, py::return_value_policy::reference)
          ;
}