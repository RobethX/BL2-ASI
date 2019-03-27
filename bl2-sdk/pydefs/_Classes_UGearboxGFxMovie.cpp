#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UGearboxGFxMovie(py::module &m)
{
    py::class_< UGearboxGFxMovie,  UGFxMovie   >(m, "UGearboxGFxMovie")
		.def_static("StaticClass", &UGearboxGFxMovie::StaticClass, py::return_value_policy::reference)
        .def_readwrite("InteractionOverrideSounds", &UGearboxGFxMovie::InteractionOverrideSounds)
        .def_readwrite("TickRateSeconds", &UGearboxGFxMovie::TickRateSeconds)
        .def_readwrite("AllStyles", &UGearboxGFxMovie::AllStyles)
        .def_readwrite("MyDefinition", &UGearboxGFxMovie::MyDefinition)
        .def_readwrite("MyPool", &UGearboxGFxMovie::MyPool)
        .def_readwrite("PlayerOwners", &UGearboxGFxMovie::PlayerOwners)
        .def_readwrite("ContextObject", &UGearboxGFxMovie::ContextObject)
        .def_readwrite("LastTickTime", &UGearboxGFxMovie::LastTickTime)
        .def_readwrite("PoolParent", &UGearboxGFxMovie::PoolParent)
        .def_readwrite("CurrentMovieState", &UGearboxGFxMovie::CurrentMovieState)
        .def_readwrite("BaseMovieStates", &UGearboxGFxMovie::BaseMovieStates)
        .def_readwrite("AllMovieStates", &UGearboxGFxMovie::AllMovieStates)
        .def_readwrite("bMouseable", &UGearboxGFxMovie::bMouseable)
        .def("extSetLanguageExt", &UGearboxGFxMovie::extSetLanguageExt)
        .def("OnClosedOnDeath", &UGearboxGFxMovie::OnClosedOnDeath)
        .def("IsShowingFlashMouse", &UGearboxGFxMovie::IsShowingFlashMouse)
        .def("extIsMouseablePlatform", &UGearboxGFxMovie::extIsMouseablePlatform)
        .def("eventSetMouseableFlag", &UGearboxGFxMovie::eventSetMouseableFlag)
        .def("GetStyleDebugString", &UGearboxGFxMovie::GetStyleDebugString)
        .def("GetStateDebugString", &UGearboxGFxMovie::GetStateDebugString)
        .def("InitializeFrom", &UGearboxGFxMovie::InitializeFrom)
        .def("RemoveStylesDrawnTo", &UGearboxGFxMovie::RemoveStylesDrawnTo)
        .def("RemoveStyles", &UGearboxGFxMovie::RemoveStyles)
        .def("RemoveStyle", &UGearboxGFxMovie::RemoveStyle)
        .def("AddStyle", &UGearboxGFxMovie::AddStyle)
        .def("ShutdownMoviePlayback", &UGearboxGFxMovie::ShutdownMoviePlayback)
        .def("InitMoviePlayback", &UGearboxGFxMovie::InitMoviePlayback)
        .def("GetRenderTexture", &UGearboxGFxMovie::GetRenderTexture, py::return_value_policy::reference)
        .def("eventMovieState_OnChanged", &UGearboxGFxMovie::eventMovieState_OnChanged)
        .def("eventMovieState_SetFromMovie", &UGearboxGFxMovie::eventMovieState_SetFromMovie)
        .def("MovieState_Copy", &UGearboxGFxMovie::MovieState_Copy)
        .def("MovieState_Compare", &UGearboxGFxMovie::MovieState_Compare)
        .def("MovieState_Toggle", &UGearboxGFxMovie::MovieState_Toggle)
        .def("MovieState_Enable", &UGearboxGFxMovie::MovieState_Enable)
        .def("MovieState_IsEnabled", &UGearboxGFxMovie::MovieState_IsEnabled)
        .def("MovieState_SupportsState", &UGearboxGFxMovie::MovieState_SupportsState)
        .def("MovieState_Init", &UGearboxGFxMovie::MovieState_Init)
        .def("InitFromDefinition", &UGearboxGFxMovie::InitFromDefinition)
        .def("MovieState_Apply", &UGearboxGFxMovie::MovieState_Apply)
        .def("MovieState_ApplyState", &UGearboxGFxMovie::MovieState_ApplyState)
        .def("ApplyState", &UGearboxGFxMovie::ApplyState)
        .def("SetRenderingEnabled", &UGearboxGFxMovie::SetRenderingEnabled)
        .def("GotoAndStop", &UGearboxGFxMovie::GotoAndStop)
        .def("GotoAndPlay", &UGearboxGFxMovie::GotoAndPlay)
        .def("PlaySpecialUISound", &UGearboxGFxMovie::PlaySpecialUISound)
        .def("eventPlayUISound", &UGearboxGFxMovie::eventPlayUISound)
        .def("eventSetOtherObject", &UGearboxGFxMovie::eventSetOtherObject)
        .def("GetInstanceContextObject", &UGearboxGFxMovie::GetInstanceContextObject, py::return_value_policy::reference)
        .def("eventOnTick", &UGearboxGFxMovie::eventOnTick)
        .def("eventOnClose", &UGearboxGFxMovie::eventOnClose)
        .def("eventStart", &UGearboxGFxMovie::eventStart)
        .def("ColorizeTooltipText", &UGearboxGFxMovie::ColorizeTooltipText)
        .def("GFxColoredText", &UGearboxGFxMovie::GFxColoredText)
        .def("SingleArgInvokeB", &UGearboxGFxMovie::SingleArgInvokeB)
        .def("SingleArgInvokeS", &UGearboxGFxMovie::SingleArgInvokeS)
        .def("SingleArgInvokeF", &UGearboxGFxMovie::SingleArgInvokeF)
        .def("GetLocalPlayer", &UGearboxGFxMovie::GetLocalPlayer, py::return_value_policy::reference)
        .def("OnClosed", &UGearboxGFxMovie::OnClosed)
        .def("WantsControllerInput", &UGearboxGFxMovie::WantsControllerInput)
        .def("SetExternalTexture", &UGearboxGFxMovie::SetExternalTexture)
        .def("OnInputAxis", &UGearboxGFxMovie::OnInputAxis)
          ;
}