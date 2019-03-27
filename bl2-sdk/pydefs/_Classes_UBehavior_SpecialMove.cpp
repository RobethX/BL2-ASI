#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UBehavior_SpecialMove(py::module &m)
{
    py::class_< UBehavior_SpecialMove,  UBehaviorBase   >(m, "UBehavior_SpecialMove")
		.def_static("StaticClass", &UBehavior_SpecialMove::StaticClass, py::return_value_policy::reference)
        .def_readwrite("SpecialMove", &UBehavior_SpecialMove::SpecialMove)
        .def_readwrite("Duration", &UBehavior_SpecialMove::Duration)
        .def("PlaySpecialMove", &UBehavior_SpecialMove::PlaySpecialMove)
        .def("TriggerOutput", &UBehavior_SpecialMove::TriggerOutput)
        .def("ApplyBehaviorToContext", &UBehavior_SpecialMove::ApplyBehaviorToContext)
          ;
}