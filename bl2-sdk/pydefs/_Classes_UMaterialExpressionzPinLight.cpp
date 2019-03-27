#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UMaterialExpressionzPinLight(py::module &m)
{
    py::class_< UMaterialExpressionzPinLight,  UMaterialExpressionBlendModeBase   >(m, "UMaterialExpressionzPinLight")
		.def_static("StaticClass", &UMaterialExpressionzPinLight::StaticClass, py::return_value_policy::reference)
          ;
}