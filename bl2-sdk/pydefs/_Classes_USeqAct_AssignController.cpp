#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_USeqAct_AssignController(py::module &m)
{
    py::class_< USeqAct_AssignController,  USequenceAction   >(m, "USeqAct_AssignController")
		.def_static("StaticClass", &USeqAct_AssignController::StaticClass, py::return_value_policy::reference)
        .def_readwrite("ControllerClass", &USeqAct_AssignController::ControllerClass)
          ;
}