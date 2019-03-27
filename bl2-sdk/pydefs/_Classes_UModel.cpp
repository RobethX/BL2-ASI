#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UModel(py::module &m)
{
    py::class_< UModel,  UObject   >(m, "UModel")
		.def_static("StaticClass", &UModel::StaticClass, py::return_value_policy::reference)
          ;
}