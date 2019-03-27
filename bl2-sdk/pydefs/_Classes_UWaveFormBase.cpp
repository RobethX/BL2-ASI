#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UWaveFormBase(py::module &m)
{
    py::class_< UWaveFormBase,  UObject   >(m, "UWaveFormBase")
		.def_static("StaticClass", &UWaveFormBase::StaticClass, py::return_value_policy::reference)
        .def_readwrite("TheWaveForm", &UWaveFormBase::TheWaveForm)
          ;
}