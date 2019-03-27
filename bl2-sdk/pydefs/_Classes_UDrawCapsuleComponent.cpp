#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UDrawCapsuleComponent(py::module &m)
{
    py::class_< UDrawCapsuleComponent,  UPrimitiveComponent   >(m, "UDrawCapsuleComponent")
		.def_static("StaticClass", &UDrawCapsuleComponent::StaticClass, py::return_value_policy::reference)
        .def_readwrite("CapsuleColor", &UDrawCapsuleComponent::CapsuleColor)
        .def_readwrite("CapsuleMaterial", &UDrawCapsuleComponent::CapsuleMaterial)
        .def_readwrite("CapsuleHeight", &UDrawCapsuleComponent::CapsuleHeight)
        .def_readwrite("CapsuleRadius", &UDrawCapsuleComponent::CapsuleRadius)
          ;
}