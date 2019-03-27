#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UBehavior_ChangeCollisionSize(py::module &m)
{
    py::class_< UBehavior_ChangeCollisionSize,  UBehaviorBase   >(m, "UBehavior_ChangeCollisionSize")
		.def_static("StaticClass", &UBehavior_ChangeCollisionSize::StaticClass, py::return_value_policy::reference)
        .def_readwrite("Radius", &UBehavior_ChangeCollisionSize::Radius)
        .def_readwrite("Height", &UBehavior_ChangeCollisionSize::Height)
        .def("ApplyBehaviorToContext", &UBehavior_ChangeCollisionSize::ApplyBehaviorToContext)
          ;
}