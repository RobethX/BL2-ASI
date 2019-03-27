#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UWillowCoverComponent(py::module &m)
{
    py::class_< UWillowCoverComponent,  UActorComponent   >(m, "UWillowCoverComponent")
		.def_static("StaticClass", &UWillowCoverComponent::StaticClass, py::return_value_policy::reference)
        .def_readwrite("AIPawn", &UWillowCoverComponent::AIPawn)
        .def_readwrite("LastAction", &UWillowCoverComponent::LastAction)
        .def("IdleTimer", &UWillowCoverComponent::IdleTimer)
        .def("FireTimer", &UWillowCoverComponent::FireTimer)
        .def("GetRange", &UWillowCoverComponent::GetRange)
        .def("eventCanFire", &UWillowCoverComponent::eventCanFire)
        .def("ClearCover", &UWillowCoverComponent::ClearCover)
        .def("PlayTimedAction", &UWillowCoverComponent::PlayTimedAction)
        .def("eventUpdateAction", &UWillowCoverComponent::eventUpdateAction)
        .def("GetAction", &UWillowCoverComponent::GetAction)
        .def("GetStance", &UWillowCoverComponent::GetStance, py::return_value_policy::reference)
        .def("GetCoverRotation", &UWillowCoverComponent::GetCoverRotation)
        .def("GetCoverLocation", &UWillowCoverComponent::GetCoverLocation)
        .def("ResetExposure", &UWillowCoverComponent::ResetExposure)
        .def("ActionFinished", &UWillowCoverComponent::ActionFinished)
          ;
}