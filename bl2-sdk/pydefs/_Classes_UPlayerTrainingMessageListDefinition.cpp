#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UPlayerTrainingMessageListDefinition(py::module &m)
{
    py::class_< UPlayerTrainingMessageListDefinition,  UGBXDefinition   >(m, "UPlayerTrainingMessageListDefinition")
		.def_static("StaticClass", &UPlayerTrainingMessageListDefinition::StaticClass, py::return_value_policy::reference)
        .def_readwrite("TrainingMessages", &UPlayerTrainingMessageListDefinition::TrainingMessages)
          ;
}