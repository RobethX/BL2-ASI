#include "stdafx.h"
// Using =======================================================================
namespace py = pybind11;

// Module ======================================================================
void Export_pystes_AInventoryManager(py::module &m)
{
    py::class_< AInventoryManager,  AActor   >(m, "AInventoryManager")
		.def_static("StaticClass", &AInventoryManager::StaticClass, py::return_value_policy::reference)
        .def_readwrite("InventoryChain", &AInventoryManager::InventoryChain)
        .def_readwrite("PendingWeapon", &AInventoryManager::PendingWeapon)
        .def_readwrite("PendingOffHandWeapon", &AInventoryManager::PendingOffHandWeapon)
        .def_readwrite("LastAttemptedSwitchToWeapon", &AInventoryManager::LastAttemptedSwitchToWeapon)
        .def_readwrite("PendingFire", &AInventoryManager::PendingFire)
        .def_readwrite("OffHandPendingFire", &AInventoryManager::OffHandPendingFire)
        .def("ClientConditionalIncrementPickupStats", &AInventoryManager::ClientConditionalIncrementPickupStats)
        .def("ClearInventoryReferences", &AInventoryManager::ClearInventoryReferences)
        .def("ShouldSwitchToBestWeapon", &AInventoryManager::ShouldSwitchToBestWeapon)
        .def("UpdateController", &AInventoryManager::UpdateController)
        .def("ClientWeaponSet", &AInventoryManager::ClientWeaponSet)
        .def("ChangedWeapon", &AInventoryManager::ChangedWeapon)
        .def("ClearPendingWeapon", &AInventoryManager::ClearPendingWeapon)
        .def("CancelWeaponChange", &AInventoryManager::CancelWeaponChange)
        .def("SetPendingWeapon", &AInventoryManager::SetPendingWeapon)
        .def("InternalSetCurrentWeapon", &AInventoryManager::InternalSetCurrentWeapon)
        .def("ServerSetCurrentWeapon", &AInventoryManager::ServerSetCurrentWeapon)
        .def("SetCurrentWeapon", &AInventoryManager::SetCurrentWeapon)
        .def("NextWeapon", &AInventoryManager::NextWeapon)
        .def("PrevWeapon", &AInventoryManager::PrevWeapon)
        .def("SwitchToBestWeapon", &AInventoryManager::SwitchToBestWeapon)
        .def("GetBestWeapon", &AInventoryManager::GetBestWeapon, py::return_value_policy::reference)
        .def("GetWeaponRatingFor", &AInventoryManager::GetWeaponRatingFor)
        .def("eventDrawHUD", &AInventoryManager::eventDrawHUD)
        .def("OwnerDied", &AInventoryManager::OwnerDied)
        .def("eventDiscardInventory", &AInventoryManager::eventDiscardInventory)
        .def("InventoryUnreadied", &AInventoryManager::InventoryUnreadied)
        .def("InventoryReadied", &AInventoryManager::InventoryReadied)
        .def("RemoveFromInventory", &AInventoryManager::RemoveFromInventory)
        .def("AddInventory", &AInventoryManager::AddInventory)
        .def("CreateInventory", &AInventoryManager::CreateInventory, py::return_value_policy::reference)
        .def("eventFindInventoryType", &AInventoryManager::eventFindInventoryType, py::return_value_policy::reference)
        .def("eventHandlePickupQuery", &AInventoryManager::eventHandlePickupQuery)
        .def("eventDestroyed", &AInventoryManager::eventDestroyed)
        .def("SetupFor", &AInventoryManager::SetupFor)
        .def("InventoryActors", [](AInventoryManager &self , class UClass* BaseClass, unsigned long bOnlyReadied) { class AInventory** pyInv = 0 ;   self.InventoryActors(BaseClass, bOnlyReadied, pyInv); return py::make_tuple(*pyInv); })
        .def("ClearAllPendingFire", &AInventoryManager::ClearAllPendingFire)
        .def("IsPendingFire", &AInventoryManager::IsPendingFire)
        .def("ClearPendingFire", &AInventoryManager::ClearPendingFire)
        .def("SetPendingFire", &AInventoryManager::SetPendingFire)
        .def("GetPendingFireLength", &AInventoryManager::GetPendingFireLength)
        .def("PostBeginPlay", &AInventoryManager::PostBeginPlay)
        .def("eventReplicatedEvent", &AInventoryManager::eventReplicatedEvent)
          ;
}