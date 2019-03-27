#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UParticleModuleSubUVMovie(py::module &m)
{
    py::class_< UParticleModuleSubUVMovie,  UParticleModule   >(m, "UParticleModuleSubUVMovie")
		.def_static("StaticClass", &UParticleModuleSubUVMovie::StaticClass, py::return_value_policy::reference)
        .def_readwrite("FrameRate", &UParticleModuleSubUVMovie::FrameRate)
        .def_readwrite("StartingFrame", &UParticleModuleSubUVMovie::StartingFrame)
        .def_readwrite("SubImageIndex", &UParticleModuleSubUV::SubImageIndex)
          ;
}