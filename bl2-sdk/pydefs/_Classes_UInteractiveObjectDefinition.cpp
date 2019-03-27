#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_UInteractiveObjectDefinition(py::module &m)
{
    py::class_< UInteractiveObjectDefinition,  UGBXDefinition   >(m, "UInteractiveObjectDefinition")
		.def_static("StaticClass", &UInteractiveObjectDefinition::StaticClass, py::return_value_policy::reference)
        .def_readwrite("VfTable_IIConstructObject", &UInteractiveObjectDefinition::VfTable_IIConstructObject)
        .def_readwrite("VfTable_IIBodyInfoProvider", &UInteractiveObjectDefinition::VfTable_IIBodyInfoProvider)
        .def_readwrite("VfTable_IIBehaviorProvider", &UInteractiveObjectDefinition::VfTable_IIBehaviorProvider)
        .def_readwrite("VfTable_IIHitRegionInfoProvider", &UInteractiveObjectDefinition::VfTable_IIHitRegionInfoProvider)
        .def_readwrite("BodyComposition", &UInteractiveObjectDefinition::BodyComposition)
        .def_readwrite("BehaviorProviderDefinition", &UInteractiveObjectDefinition::BehaviorProviderDefinition)
        .def_readwrite("MaxHealth", &UInteractiveObjectDefinition::MaxHealth)
        .def_readwrite("Mesh", &UInteractiveObjectDefinition::Mesh)
        .def_readwrite("CollisionType", &UInteractiveObjectDefinition::CollisionType)
        .def_readwrite("HUDIcon", &UInteractiveObjectDefinition::HUDIcon)
        .def_readwrite("CompassIcon", &UInteractiveObjectDefinition::CompassIcon)
        .def_readwrite("TickGroup", &UInteractiveObjectDefinition::TickGroup)
        .def_readwrite("RelevanceDistance", &UInteractiveObjectDefinition::RelevanceDistance)
        .def_readwrite("AttributeStartingValues", &UInteractiveObjectDefinition::AttributeStartingValues)
        .def_readwrite("InstanceData", &UInteractiveObjectDefinition::InstanceData)
        .def_readwrite("HUDIconDef", &UInteractiveObjectDefinition::HUDIconDef)
        .def_readwrite("HUDIconDefSecondary", &UInteractiveObjectDefinition::HUDIconDefSecondary)
        .def_readwrite("TriggerRadius", &UInteractiveObjectDefinition::TriggerRadius)
        .def_readwrite("TriggerHeight", &UInteractiveObjectDefinition::TriggerHeight)
        .def_readwrite("StatusMenuMapInfoBoxHeader", &UInteractiveObjectDefinition::StatusMenuMapInfoBoxHeader)
        .def_readwrite("StatusMenuMapInfoBoxDescription", &UInteractiveObjectDefinition::StatusMenuMapInfoBoxDescription)
        .def_readwrite("VehicleTriggerRadius", &UInteractiveObjectDefinition::VehicleTriggerRadius)
        .def_readwrite("StatusEffectSockets", &UInteractiveObjectDefinition::StatusEffectSockets)
        .def_readwrite("StatusEffectsParticleSystem", &UInteractiveObjectDefinition::StatusEffectsParticleSystem)
        .def_readwrite("NameTag", &UInteractiveObjectDefinition::NameTag)
        .def_readwrite("DialogGroups", &UInteractiveObjectDefinition::DialogGroups)
        .def_readwrite("InteractiveObjectClass", &UInteractiveObjectDefinition::InteractiveObjectClass)
        .def_readwrite("TargetPriority", &UInteractiveObjectDefinition::TargetPriority)
        .def_readwrite("HealthDisplayHack", &UInteractiveObjectDefinition::HealthDisplayHack)
        .def_readwrite("Allegiance", &UInteractiveObjectDefinition::Allegiance)
        .def_readwrite("TargetableSocket", &UInteractiveObjectDefinition::TargetableSocket)
        .def_readwrite("TargetableOffset", &UInteractiveObjectDefinition::TargetableOffset)
        .def_readwrite("AIAvoidRadius", &UInteractiveObjectDefinition::AIAvoidRadius)
        .def_readwrite("bBlockOnTakeDamageWhenDamageEqualZero", &UInteractiveObjectDefinition::bBlockOnTakeDamageWhenDamageEqualZero)
        .def_readwrite("FocusRadius", &UInteractiveObjectDefinition::FocusRadius)
        .def_readwrite("FocusOffset", &UInteractiveObjectDefinition::FocusOffset)
        .def_readwrite("DefaultHitRegionDefinition", &UInteractiveObjectDefinition::DefaultHitRegionDefinition)
        .def_readwrite("HitRegionDefinitions", &UInteractiveObjectDefinition::HitRegionDefinitions)
        .def_readwrite("LightingBoundsScale", &UInteractiveObjectDefinition::LightingBoundsScale)
        .def_readwrite("ModShadowFadeoutExponent", &UInteractiveObjectDefinition::ModShadowFadeoutExponent)
        .def_readwrite("ModShadowFadeoutTime", &UInteractiveObjectDefinition::ModShadowFadeoutTime)
        .def_readwrite("AmbientGlow", &UInteractiveObjectDefinition::AmbientGlow)
        .def_readwrite("AmbientShadowSourceDirection", &UInteractiveObjectDefinition::AmbientShadowSourceDirection)
        .def_readwrite("AmbientShadowColor", &UInteractiveObjectDefinition::AmbientShadowColor)
        .def_readwrite("DominantShadowTransitionStartDistance", &UInteractiveObjectDefinition::DominantShadowTransitionStartDistance)
        .def_readwrite("DominantShadowTransitionEndDistance", &UInteractiveObjectDefinition::DominantShadowTransitionEndDistance)
        .def_readwrite("SkelUpdate_ThrottleDistance", &UInteractiveObjectDefinition::SkelUpdate_ThrottleDistance)
        .def_readwrite("Skelupdate_ThrottleTime", &UInteractiveObjectDefinition::Skelupdate_ThrottleTime)
        .def("GetHitRegions", [](UInteractiveObjectDefinition &self , TArray< class UBodyHitRegionDefinition* >* Regions) { class UBodyHitRegionDefinition** pyDefaultRegion = 0 ;   self.GetHitRegions(Regions, pyDefaultRegion); return py::make_tuple(*pyDefaultRegion); })
        .def("SetBehaviorProviderDefinition", &UInteractiveObjectDefinition::SetBehaviorProviderDefinition)
        .def("GetBehaviorProviderDefinition", &UInteractiveObjectDefinition::GetBehaviorProviderDefinition, py::return_value_policy::reference)
        .def("OnAllPickupsDetached", &UInteractiveObjectDefinition::OnAllPickupsDetached)
        .def("OnPickupDetached", &UInteractiveObjectDefinition::OnPickupDetached)
        .def("OnDispense", &UInteractiveObjectDefinition::OnDispense)
        .def("OnClosing", &UInteractiveObjectDefinition::OnClosing)
        .def("OnMissionTurnedIn", &UInteractiveObjectDefinition::OnMissionTurnedIn)
        .def("OnTimerEvent", &UInteractiveObjectDefinition::OnTimerEvent)
        .def("OnKilled", &UInteractiveObjectDefinition::OnKilled)
        .def("OnHealthDepleted", &UInteractiveObjectDefinition::OnHealthDepleted)
        .def("OnTakeDamage", &UInteractiveObjectDefinition::OnTakeDamage)
        .def("OnUserCouldNotAffordSecondary", &UInteractiveObjectDefinition::OnUserCouldNotAffordSecondary)
        .def("OnUserCouldNotAfford", &UInteractiveObjectDefinition::OnUserCouldNotAfford)
        .def("OnSecondaryUsedBy", &UInteractiveObjectDefinition::OnSecondaryUsedBy)
        .def("OnUsedBy", &UInteractiveObjectDefinition::OnUsedBy)
        .def("OnUnTouch", &UInteractiveObjectDefinition::OnUnTouch)
        .def("OnTouch", &UInteractiveObjectDefinition::OnTouch)
        .def("OnSpawn", &UInteractiveObjectDefinition::OnSpawn)
          ;
}