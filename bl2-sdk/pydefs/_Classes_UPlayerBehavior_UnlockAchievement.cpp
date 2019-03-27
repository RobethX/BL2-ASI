#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UPlayerBehavior_UnlockAchievement(py::module &m)
{
    py::class_< UPlayerBehavior_UnlockAchievement,  UPlayerBehaviorBase   >(m, "UPlayerBehavior_UnlockAchievement")
		.def_static("StaticClass", &UPlayerBehavior_UnlockAchievement::StaticClass, py::return_value_policy::reference)
        .def_readwrite("Achievement", &UPlayerBehavior_UnlockAchievement::Achievement)
        .def("ApplyBehaviorToContext", &UPlayerBehavior_UnlockAchievement::ApplyBehaviorToContext)
          ;
}