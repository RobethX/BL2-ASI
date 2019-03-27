#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UConstantAttributeValueResolver(py::module &m)
{
    py::class_< UConstantAttributeValueResolver,  UAttributeValueResolver   >(m, "UConstantAttributeValueResolver")
		.def_static("StaticClass", &UConstantAttributeValueResolver::StaticClass, py::return_value_policy::reference)
        .def_readwrite("ConstantValue", &UConstantAttributeValueResolver::ConstantValue)
          ;
}