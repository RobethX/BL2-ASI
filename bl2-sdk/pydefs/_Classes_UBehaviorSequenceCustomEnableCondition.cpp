#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UBehaviorSequenceCustomEnableCondition(py::module &m)
{
    py::class_< UBehaviorSequenceCustomEnableCondition,  UObject   >(m, "UBehaviorSequenceCustomEnableCondition")
		.def_static("StaticClass", &UBehaviorSequenceCustomEnableCondition::StaticClass, py::return_value_policy::reference)
        .def_readwrite("LinkedBehaviorSequences", &UBehaviorSequenceCustomEnableCondition::LinkedBehaviorSequences)
        .def_readwrite("BehaviorKernelInstanceTagForTransientState", &UBehaviorSequenceCustomEnableCondition::BehaviorKernelInstanceTagForTransientState)
          ;
}