#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UGFxAction_CloseMovie(py::module &m)
{
    py::class_< UGFxAction_CloseMovie,  USequenceAction   >(m, "UGFxAction_CloseMovie")
		.def_static("StaticClass", &UGFxAction_CloseMovie::StaticClass, py::return_value_policy::reference)
        .def_readwrite("Movie", &UGFxAction_CloseMovie::Movie)
        .def("eventIsValidLevelSequenceObject", &UGFxAction_CloseMovie::eventIsValidLevelSequenceObject)
          ;
}