g_classFuncs["AWwiseSoundGroup"] = {}
g_classFuncs["UISpecialOcclusionAccumulator"] = {}
g_classFuncs["UIAkEnvironmentalEffectProvider"] = {}
g_classFuncs["AWwiseSoundVolume"] = {}
local ffi = require("ffi")
local c = g_classFuncs

	g_classFuncs["UIAkEnvironmentalEffectProvider"]["GetEnvironmentalEffectsForLocation"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37462,
				cType = ffi.typeof("struct TArray_FEnvironmentalEffectInfo"),
				castTo = ffi.typeof("struct TArray_FEnvironmentalEffectInfo*"),
				TArray = true,
				offset = 28
			},
			{
				name = "GameObjComponent",
				index = 37466,
				className = "UAkComponent",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "ListenerLocation",
				index = 37465,
				type = ffi.typeof("struct FVector"),
				castTo = ffi.typeof("struct FVector*"),
				flags = 64,
				offset = 4
			},
			{
				name = "ObjectLocation",
				index = 37464,
				type = ffi.typeof("struct FVector"),
				castTo = ffi.typeof("struct FVector*"),
				flags = 64,
				offset = 16
			},
		},
		dataSize = 40,
		index = 37461,
		retOffset = 28,
	}
	g_classFuncs["UISpecialOcclusionAccumulator"]["RemoveOcclusionProvider"] = {
		fields = {
			{
				name = "Source",
				index = 37478,
				className = "AActor",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37477,
	}
	g_classFuncs["UISpecialOcclusionAccumulator"]["SetOcclusionForProvider"] = {
		fields = {
			{
				name = "Source",
				index = 37476,
				className = "AActor",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Amount",
				index = 37475,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 37474,
	}
	g_classFuncs["AWwiseSoundGroup"]["RemoveOcclusionProvider"] = {
		fields = {
			{
				name = "Source",
				index = 37507,
				className = "AActor",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37506,
	}
	g_classFuncs["AWwiseSoundGroup"]["SetOcclusionForProvider"] = {
		fields = {
			{
				name = "Source",
				index = 37505,
				className = "AActor",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Amount",
				index = 37504,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 37503,
	}
	g_classFuncs["AWwiseSoundGroup"]["GetOcclusionAmount"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37502,
				castTo = ffi.typeof("float*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37501,
		retOffset = 0,
	}
	g_classFuncs["AWwiseSoundGroup"]["SetAkSwitchObject"] = {
		fields = {
			{
				name = "Switch",
				index = 37500,
				className = "UAkSwitch",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37499,
	}
	g_classFuncs["AWwiseSoundGroup"]["SetRTPCObjectValue"] = {
		fields = {
			{
				name = "InRtpc",
				index = 37498,
				className = "UAkRtpc",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "TargetValue",
				index = 37497,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 37496,
	}
	g_classFuncs["AWwiseSoundVolume"]["RemoveOcclusionProvider"] = {
		fields = {
			{
				name = "Source",
				index = 37587,
				className = "AActor",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37586,
	}
	g_classFuncs["AWwiseSoundVolume"]["SetOcclusionForProvider"] = {
		fields = {
			{
				name = "Source",
				index = 37585,
				className = "AActor",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Amount",
				index = 37584,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 37583,
	}
	g_classFuncs["AWwiseSoundVolume"]["GetOcclusionAmount"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37582,
				castTo = ffi.typeof("float*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37581,
		retOffset = 0,
	}
	g_classFuncs["AWwiseSoundVolume"]["UpdateAkComponentPosition"] = {
		fields = {
			{
				name = "ListenerPositions",
				isRet = true,
				index = 37577,
				isOutParm = true,
				cType = ffi.typeof("struct TArray_FVector"),
				castTo = ffi.typeof("struct TArray_FVector*"),
				TArray = true,
				offset = 0
			},
			{
				name = "ListenerOrientations",
				isRet = true,
				index = 37579,
				isOutParm = true,
				cType = ffi.typeof("struct TArray_FRotator"),
				castTo = ffi.typeof("struct TArray_FRotator*"),
				TArray = true,
				offset = 12
			},
		},
		dataSize = 24,
		index = 37576,
	}
	g_classFuncs["AWwiseSoundVolume"]["GetEnvironmentalEffectsForLocation"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37571,
				cType = ffi.typeof("struct TArray_FEnvironmentalEffectInfo"),
				castTo = ffi.typeof("struct TArray_FEnvironmentalEffectInfo*"),
				TArray = true,
				offset = 28
			},
			{
				name = "GameObjComponent",
				index = 37575,
				className = "UAkComponent",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "ListenerLocation",
				index = 37574,
				type = ffi.typeof("struct FVector"),
				castTo = ffi.typeof("struct FVector*"),
				flags = 64,
				offset = 4
			},
			{
				name = "ObjectLocation",
				index = 37573,
				type = ffi.typeof("struct FVector"),
				castTo = ffi.typeof("struct FVector*"),
				flags = 64,
				offset = 16
			},
		},
		dataSize = 40,
		index = 37570,
		retOffset = 28,
	}
	g_classFuncs["AWwiseSoundVolume"]["CalculateFacePlanes"] = {
		fields = {
		},
		dataSize = 0,
		index = 37569,
	}
