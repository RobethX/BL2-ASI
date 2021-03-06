local ffi = require("ffi")
local c = g_classFuncs

	["eventFSCommand"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38339,
				castTo = ffi.typeof("BOOL*"),
				offset = 32
			},
			{
				name = "Movie",
				index = 38343,
				className = "UGFxMoviePlayer",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Event",
				index = 38342,
				className = "UGFxEvent_FSCommand",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 4
			},
			{
				name = "Cmd",
				index = 38341,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 8
			},
			{
				name = "Arg",
				index = 38340,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 20
			},
		},
		dataSize = 36,
		index = 38338,
		retOffset = 32,
	},
	["CloseAllMoviePlayers"] = {
		fields = {
		},
		dataSize = 0,
		index = 38362,
	},
	["NotifySplitscreenLayoutChanged"] = {
		fields = {
		},
		dataSize = 0,
		index = 38361,
	},
	["NotifyPlayerRemoved"] = {
		fields = {
			{
				name = "PlayerIndex",
				index = 38360,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "RemovedPlayer",
				index = 38359,
				className = "ULocalPlayer",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 4
			},
		},
		dataSize = 8,
		index = 38358,
	},
	["NotifyPlayerAdded"] = {
		fields = {
			{
				name = "PlayerIndex",
				index = 38357,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "AddedPlayer",
				index = 38356,
				className = "ULocalPlayer",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 4
			},
		},
		dataSize = 8,
		index = 38355,
	},
	["NotifyGameSessionEnded"] = {
		fields = {
		},
		dataSize = 0,
		index = 38354,
	},
	["GetFocusMovie"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38352,
				castTo = ffi.typeof("struct UGFxMoviePlayer**"),
				offset = 4
			},
			{
				name = "ControllerId",
				index = 38353,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 8,
		index = 38351,
		retOffset = 4,
	},
	["GetFocusMovie"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38377,
				castTo = ffi.typeof("struct UGFxMoviePlayer**"),
				offset = 4
			},
			{
				name = "ControllerId",
				index = 38378,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 8,
		index = 38376,
		retOffset = 4,
	},
	["eventLookupSound"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38371,
				castTo = ffi.typeof("struct UAkEvent**"),
				offset = 8
			},
			{
				name = "UIEvent",
				index = 38372,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
		},
		dataSize = 16,
		index = 38370,
		retOffset = 8,
	},
	["eventShowDialog"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38368,
				cType = ffi.typeof("struct FScriptInterface"),
				castTo = ffi.typeof("struct FScriptInterface*"),
				offset = 4
			},
			{
				name = "PC",
				index = 38369,
				className = "APlayerController",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38367,
		retOffset = 4,
	},
	["eventInit"] = {
		fields = {
			{
				name = "Def",
				index = 38366,
				className = "UGFxManagerDefinition",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 38365,
	},
	["UnregisterGFxObject"] = {
		fields = {
			{
				name = "anObject",
				index = 37625,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37623,
	},
	["RegisterGFxObject"] = {
		fields = {
			{
				name = "anObject",
				index = 37627,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37624,
	},
	["SendMousePos"] = {
		fields = {
		},
		dataSize = 0,
		index = 37626,
	},
	["IsShowingFlashMouse"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37630,
				castTo = ffi.typeof("BOOL*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37628,
		retOffset = 0,
	},
	["HookSaveScreenshot"] = {
		fields = {
		},
		dataSize = 0,
		index = 37629,
	},
	["UpdateRenderTexture"] = {
		fields = {
			{
				name = "NewRenderTexture",
				index = 37633,
				className = "UTextureRenderTarget2D",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37631,
	},
	["OnInputKey"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37636,
				castTo = ffi.typeof("BOOL*"),
				offset = 16
			},
			{
				name = "ControllerId",
				index = 37635,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "ukey",
				index = 37637,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 4
			},
			{
				name = "uevent",
				index = 37638,
				type = "number",
				castTo = ffi.typeof("unsigned char*"),
				enumName = "EInputEvent",
				flags = 32,
				offset = 12
			},
		},
		dataSize = 20,
		index = 37632,
		retOffset = 16,
	},
	["WantsInput"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37641,
				castTo = ffi.typeof("BOOL*"),
				offset = 8
			},
			{
				name = "ukey",
				index = 37640,
				optional = true,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
		},
		dataSize = 12,
		index = 37634,
		retOffset = 8,
	},
	["WantsControllerInput"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37644,
				castTo = ffi.typeof("BOOL*"),
				offset = 4
			},
			{
				name = "ControllerId",
				index = 37643,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 8,
		index = 37639,
		retOffset = 4,
	},
	["InputKey"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37649,
				castTo = ffi.typeof("BOOL*"),
				offset = 16
			},
			{
				name = "ControllerId",
				index = 37646,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "ukey",
				index = 37647,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 4
			},
			{
				name = "uevent",
				index = 37648,
				type = "number",
				castTo = ffi.typeof("unsigned char*"),
				enumName = "EInputEvent",
				flags = 32,
				offset = 12
			},
		},
		dataSize = 20,
		index = 37642,
		retOffset = 16,
	},
	["GetGFxManager"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37651,
				castTo = ffi.typeof("struct UGFxManager**"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37645,
		retOffset = 0,
	},
	["ResolveDataStoreMarkup"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37654,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 12
			},
			{
				name = "Markup",
				index = 37653,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 24,
		index = 37650,
		retOffset = 12,
	},
	["UpdateSplitscreenLayout"] = {
		fields = {
		},
		dataSize = 0,
		index = 37652,
	},
	["ApplyPriorityVisibilityEffect"] = {
		fields = {
			{
				name = "bRemoveEffect",
				index = 37657,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37655,
	},
	["ApplyPriorityBlurEffect"] = {
		fields = {
			{
				name = "bRemoveEffect",
				index = 37659,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37656,
	},
	["eventApplyPriorityEffect"] = {
		fields = {
			{
				name = "bRequestedBlurState",
				index = 37661,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
			{
				name = "bRequestedHiddenState",
				index = 37662,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 37658,
	},
	["PlaySoundFromTheme"] = {
		fields = {
			{
				name = "EventName",
				index = 37668,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
			{
				name = "SoundThemeName",
				index = 37670,
				optional = true,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 8
			},
		},
		dataSize = 24,
		index = 37660,
	},
	["eventOnFocusLost"] = {
		fields = {
			{
				name = "LocalPlayerIndex",
				index = 37675,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37667,
	},
	["eventOnFocusGained"] = {
		fields = {
			{
				name = "LocalPlayerIndex",
				index = 37677,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37674,
	},
	["ConsoleCommand"] = {
		fields = {
			{
				name = "Command",
				index = 37679,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 37676,
	},
	["SetLP"] = {
		fields = {
			{
				name = "LocPlay",
				index = 37680,
				className = "ULocalPlayer",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37678,
	},
	["GetPC"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37682,
				castTo = ffi.typeof("struct APlayerController**"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37673,
		retOffset = 0,
	},
	["GetLP"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37684,
				castTo = ffi.typeof("struct ULocalPlayer**"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37681,
		retOffset = 0,
	},
	["Init"] = {
		fields = {
			{
				name = "LocPlay",
				index = 37686,
				optional = true,
				className = "ULocalPlayer",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37683,
	},
	["SetWidgetPathBinding"] = {
		fields = {
			{
				name = "WidgetToBind",
				index = 37692,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Path",
				index = 37693,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 4
			},
		},
		dataSize = 12,
		index = 37685,
	},
	["eventPostWidgetInit"] = {
		fields = {
		},
		dataSize = 0,
		index = 37691,
	},
	["eventWidgetUnloaded"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37697,
				castTo = ffi.typeof("BOOL*"),
				offset = 20
			},
			{
				name = "WidgetName",
				index = 37696,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
			{
				name = "WidgetPath",
				index = 37698,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 8
			},
			{
				name = "Widget",
				index = 37699,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 16
			},
		},
		dataSize = 24,
		index = 37694,
		retOffset = 20,
	},
	["eventWidgetInitialized"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37702,
				castTo = ffi.typeof("BOOL*"),
				offset = 20
			},
			{
				name = "WidgetName",
				index = 37701,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
			{
				name = "WidgetPath",
				index = 37703,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 8
			},
			{
				name = "Widget",
				index = 37704,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 16
			},
		},
		dataSize = 24,
		index = 37695,
		retOffset = 20,
	},
	["ActionScriptObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37707,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 12
			},
			{
				name = "Path",
				index = 37706,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 37700,
		retOffset = 12,
	},
	["ActionScriptString"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37710,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 12
			},
			{
				name = "Path",
				index = 37709,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 24,
		index = 37705,
		retOffset = 12,
	},
	["ActionScriptFloat"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37713,
				castTo = ffi.typeof("float*"),
				offset = 12
			},
			{
				name = "Path",
				index = 37712,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 37708,
		retOffset = 12,
	},
	["ActionScriptInt"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37716,
				castTo = ffi.typeof("int*"),
				offset = 12
			},
			{
				name = "Path",
				index = 37715,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 37711,
		retOffset = 12,
	},
	["ActionScriptVoid"] = {
		fields = {
			{
				name = "Path",
				index = 37718,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 12,
		index = 37714,
	},
	["ActionScript"] = {
		fields = {
			{
				name = "Path",
				index = 37720,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 12,
		index = 37717,
	},
	["Invoke"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37724,
				cType = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				offset = 24
			},
			{
				name = "Method",
				index = 37722,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "args",
				index = 37723,
				type = ffi.typeof("struct TArray_FASValue"),
				castTo = ffi.typeof("struct TArray_FASValue*"),
				flags = 8,
				offset = 12
			},
		},
		dataSize = 48,
		index = 37719,
		retOffset = 24,
	},
	["ActionScriptSetFunction"] = {
		fields = {
			{
				name = "Object",
				index = 37734,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Member",
				index = 37735,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
		},
		dataSize = 16,
		index = 37721,
	},
	["CreateArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37737,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37733,
		retOffset = 0,
	},
	["CreateObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37741,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 16
			},
			{
				name = "ASClass",
				index = 37739,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Type",
				index = 37740,
				optional = true,
				type = ffi.typeof("struct UClass*"),
				castTo = ffi.typeof("struct UClass**"),
				flags = 1,
				offset = 12
			},
		},
		dataSize = 20,
		index = 37736,
		retOffset = 16,
	},
	["SetVariableStringArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37746,
				castTo = ffi.typeof("BOOL*"),
				offset = 28
			},
			{
				name = "Path",
				index = 37743,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Index",
				index = 37744,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Arg",
				index = 37745,
				type = ffi.typeof("struct TArray_FString"),
				castTo = ffi.typeof("struct TArray_FString*"),
				flags = 8,
				offset = 16
			},
		},
		dataSize = 32,
		index = 37738,
		retOffset = 28,
	},
	["SetVariableFloatArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37752,
				castTo = ffi.typeof("BOOL*"),
				offset = 28
			},
			{
				name = "Path",
				index = 37749,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Index",
				index = 37750,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Arg",
				index = 37751,
				type = ffi.typeof("struct TArray_float"),
				castTo = ffi.typeof("struct TArray_float*"),
				flags = 8,
				offset = 16
			},
		},
		dataSize = 32,
		index = 37742,
		retOffset = 28,
	},
	["SetVariableIntArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37758,
				castTo = ffi.typeof("BOOL*"),
				offset = 28
			},
			{
				name = "Path",
				index = 37755,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Index",
				index = 37756,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Arg",
				index = 37757,
				type = ffi.typeof("struct TArray_int"),
				castTo = ffi.typeof("struct TArray_int*"),
				flags = 8,
				offset = 16
			},
		},
		dataSize = 32,
		index = 37748,
		retOffset = 28,
	},
	["SetVariableArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37764,
				castTo = ffi.typeof("BOOL*"),
				offset = 28
			},
			{
				name = "Path",
				index = 37761,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Index",
				index = 37762,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Arg",
				index = 37763,
				type = ffi.typeof("struct TArray_FASValue"),
				castTo = ffi.typeof("struct TArray_FASValue*"),
				flags = 8,
				offset = 16
			},
		},
		dataSize = 32,
		index = 37754,
		retOffset = 28,
	},
	["GetVariableStringArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37770,
				castTo = ffi.typeof("BOOL*"),
				offset = 28
			},
			{
				name = "Path",
				index = 37767,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Index",
				index = 37768,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Arg",
				isRet = true,
				index = 37769,
				isOutParm = true,
				cType = ffi.typeof("struct TArray_FString"),
				castTo = ffi.typeof("struct TArray_FString*"),
				TArray = true,
				offset = 16
			},
		},
		dataSize = 32,
		index = 37760,
		retOffset = 28,
	},
	["GetVariableFloatArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37776,
				castTo = ffi.typeof("BOOL*"),
				offset = 28
			},
			{
				name = "Path",
				index = 37773,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Index",
				index = 37774,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Arg",
				isRet = true,
				index = 37775,
				isOutParm = true,
				cType = ffi.typeof("struct TArray_float"),
				castTo = ffi.typeof("struct TArray_float*"),
				TArray = true,
				offset = 16
			},
		},
		dataSize = 32,
		index = 37766,
		retOffset = 28,
	},
	["GetVariableIntArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37782,
				castTo = ffi.typeof("BOOL*"),
				offset = 28
			},
			{
				name = "Path",
				index = 37779,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Index",
				index = 37780,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Arg",
				isRet = true,
				index = 37781,
				isOutParm = true,
				cType = ffi.typeof("struct TArray_int"),
				castTo = ffi.typeof("struct TArray_int*"),
				TArray = true,
				offset = 16
			},
		},
		dataSize = 32,
		index = 37772,
		retOffset = 28,
	},
	["GetVariableArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37788,
				castTo = ffi.typeof("BOOL*"),
				offset = 28
			},
			{
				name = "Path",
				index = 37785,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Index",
				index = 37786,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Arg",
				isRet = true,
				index = 37787,
				isOutParm = true,
				cType = ffi.typeof("struct TArray_FASValue"),
				castTo = ffi.typeof("struct TArray_FASValue*"),
				TArray = true,
				offset = 16
			},
		},
		dataSize = 32,
		index = 37778,
		retOffset = 28,
	},
	["SetVariableObject"] = {
		fields = {
			{
				name = "Path",
				index = 37791,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Object",
				index = 37792,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 12
			},
		},
		dataSize = 16,
		index = 37784,
	},
	["SetVariableString"] = {
		fields = {
			{
				name = "Path",
				index = 37794,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "S",
				index = 37795,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 12
			},
		},
		dataSize = 24,
		index = 37790,
	},
	["SetVariableNumber"] = {
		fields = {
			{
				name = "Path",
				index = 37797,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "F",
				index = 37798,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 12
			},
		},
		dataSize = 16,
		index = 37793,
	},
	["SetVariableBool"] = {
		fields = {
			{
				name = "Path",
				index = 37800,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "B",
				index = 37801,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 12
			},
		},
		dataSize = 16,
		index = 37796,
	},
	["SetVariable"] = {
		fields = {
			{
				name = "Path",
				index = 37803,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Arg",
				index = 37804,
				type = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				flags = 64,
				offset = 12
			},
		},
		dataSize = 36,
		index = 37799,
	},
	["GetVariableObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37808,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 16
			},
			{
				name = "Path",
				index = 37806,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Type",
				index = 37807,
				optional = true,
				type = ffi.typeof("struct UClass*"),
				castTo = ffi.typeof("struct UClass**"),
				flags = 1,
				offset = 12
			},
		},
		dataSize = 20,
		index = 37802,
		retOffset = 16,
	},
	["GetVariableString"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37811,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 12
			},
			{
				name = "Path",
				index = 37810,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 24,
		index = 37805,
		retOffset = 12,
	},
	["GetVariableNumber"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37814,
				castTo = ffi.typeof("float*"),
				offset = 12
			},
			{
				name = "Path",
				index = 37813,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 37809,
		retOffset = 12,
	},
	["GetVariableBool"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37817,
				castTo = ffi.typeof("BOOL*"),
				offset = 12
			},
			{
				name = "Path",
				index = 37816,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 37812,
		retOffset = 12,
	},
	["GetVariable"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37820,
				cType = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				offset = 12
			},
			{
				name = "Path",
				index = 37819,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 36,
		index = 37815,
		retOffset = 12,
	},
	["eventFilterAxisInput"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37823,
				castTo = ffi.typeof("BOOL*"),
				offset = 20
			},
			{
				name = "ControllerId",
				index = 37822,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Key",
				index = 37824,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 4
			},
			{
				name = "Delta",
				index = 37825,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 12
			},
			{
				name = "DeltaTime",
				index = 37826,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 16
			},
		},
		dataSize = 24,
		index = 37818,
		retOffset = 20,
	},
	["eventFilterButtonInput"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37829,
				castTo = ffi.typeof("BOOL*"),
				offset = 16
			},
			{
				name = "ControllerId",
				index = 37828,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "ButtonName",
				index = 37830,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 4
			},
			{
				name = "InputEvent",
				index = 37831,
				type = "number",
				castTo = ffi.typeof("unsigned char*"),
				enumName = "EInputEvent",
				flags = 32,
				offset = 12
			},
		},
		dataSize = 20,
		index = 37821,
		retOffset = 16,
	},
	["FlushPlayerInput"] = {
		fields = {
			{
				name = "capturekeysonly",
				index = 37833,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37827,
	},
	["ClearFocusIgnoreKeys"] = {
		fields = {
		},
		dataSize = 0,
		index = 37832,
	},
	["AddFocusIgnoreKey"] = {
		fields = {
			{
				name = "Key",
				index = 37836,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
		},
		dataSize = 8,
		index = 37834,
	},
	["ClearCaptureKeys"] = {
		fields = {
		},
		dataSize = 0,
		index = 37835,
	},
	["AddCaptureKey"] = {
		fields = {
			{
				name = "Key",
				index = 37839,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
		},
		dataSize = 8,
		index = 37837,
	},
	["SetMovieCanReceiveInput"] = {
		fields = {
			{
				name = "bCanReceiveInput",
				index = 37841,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37838,
	},
	["SetMovieCanReceiveFocus"] = {
		fields = {
			{
				name = "bCanReceiveFocus",
				index = 37843,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37840,
	},
	["SetSceneDPG"] = {
		fields = {
			{
				name = "NewDPG",
				index = 37845,
				type = "number",
				castTo = ffi.typeof("unsigned char*"),
				enumName = "ESceneDepthPriorityGroup",
				flags = 32,
				offset = 0
			},
		},
		dataSize = 1,
		index = 37842,
	},
	["SetPerspective3D"] = {
		fields = {
			{
				name = "matPersp",
				isRet = true,
				index = 37847,
				isOutParm = true,
				cType = ffi.typeof("struct FMatrix"),
				castTo = ffi.typeof("struct FMatrix*"),
				offset = 0
			},
		},
		dataSize = 64,
		index = 37844,
	},
	["SetView3D"] = {
		fields = {
			{
				name = "matView",
				isRet = true,
				index = 37849,
				isOutParm = true,
				cType = ffi.typeof("struct FMatrix"),
				castTo = ffi.typeof("struct FMatrix*"),
				offset = 0
			},
		},
		dataSize = 64,
		index = 37846,
	},
	["GetVisibleFrameRect"] = {
		fields = {
			{
				name = "x0",
				isRet = true,
				index = 37851,
				isOutParm = true,
				castTo = ffi.typeof("float*"),
				offset = 0
			},
			{
				name = "y0",
				isRet = true,
				index = 37852,
				isOutParm = true,
				castTo = ffi.typeof("float*"),
				offset = 4
			},
			{
				name = "X1",
				isRet = true,
				index = 37853,
				isOutParm = true,
				castTo = ffi.typeof("float*"),
				offset = 8
			},
			{
				name = "Y1",
				isRet = true,
				index = 37854,
				isOutParm = true,
				castTo = ffi.typeof("float*"),
				offset = 12
			},
		},
		dataSize = 16,
		index = 37848,
	},
	["SetAlignment"] = {
		fields = {
			{
				name = "A",
				index = 37856,
				type = "number",
				castTo = ffi.typeof("unsigned char*"),
				enumName = "GFxAlign",
				flags = 32,
				offset = 0
			},
		},
		dataSize = 1,
		index = 37850,
	},
	["SetViewScaleMode"] = {
		fields = {
			{
				name = "SM",
				index = 37860,
				type = "number",
				castTo = ffi.typeof("unsigned char*"),
				enumName = "GFxScaleMode",
				flags = 32,
				offset = 0
			},
		},
		dataSize = 1,
		index = 37855,
	},
	["eventOnSetViewport"] = {
		fields = {
		},
		dataSize = 0,
		index = 37859,
	},
	["SetViewport"] = {
		fields = {
			{
				name = "X",
				index = 37863,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Y",
				index = 37864,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 4
			},
			{
				name = "Width",
				index = 37865,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 8
			},
			{
				name = "Height",
				index = 37866,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
		},
		dataSize = 16,
		index = 37861,
	},
	["GetGameViewportClient"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37868,
				castTo = ffi.typeof("struct UGameViewportClient**"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37862,
		retOffset = 0,
	},
	["SetPriority"] = {
		fields = {
			{
				name = "NewPriority",
				index = 37870,
				type = "number",
				castTo = ffi.typeof("unsigned char*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 1,
		index = 37867,
	},
	["PublishDataStoreValues"] = {
		fields = {
		},
		dataSize = 0,
		index = 37869,
	},
	["RefreshDataStoreBindings"] = {
		fields = {
		},
		dataSize = 0,
		index = 37871,
	},
	["SetExternalTexture"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37876,
				castTo = ffi.typeof("BOOL*"),
				offset = 16
			},
			{
				name = "Resource",
				index = 37874,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Texture",
				index = 37875,
				className = "UTexture",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 12
			},
		},
		dataSize = 20,
		index = 37872,
		retOffset = 16,
	},
	["SetExternalInterface"] = {
		fields = {
			{
				name = "H",
				index = 37878,
				className = "UObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37873,
	},
	["SetTimingMode"] = {
		fields = {
			{
				name = "Mode",
				index = 37881,
				type = "number",
				castTo = ffi.typeof("unsigned char*"),
				enumName = "GFxTimingMode",
				flags = 32,
				offset = 0
			},
		},
		dataSize = 1,
		index = 37877,
	},
	["SetMovieInfo"] = {
		fields = {
			{
				name = "Data",
				index = 37884,
				className = "USwfMovie",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37880,
	},
	["eventConditionalClearPause"] = {
		fields = {
		},
		dataSize = 4,
		index = 37883,
	},
	["eventOnCleanup"] = {
		fields = {
		},
		dataSize = 0,
		index = 37885,
	},
	["eventOnClose"] = {
		fields = {
		},
		dataSize = 0,
		index = 37887,
	},
	["Close"] = {
		fields = {
			{
				name = "Unload",
				index = 37890,
				optional = true,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37888,
	},
	["SetPause"] = {
		fields = {
			{
				name = "bPausePlayback",
				index = 37892,
				optional = true,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37889,
	},
	["OnPostAdvance"] = {
		fields = {
			{
				name = "DeltaTime",
				index = 37894,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37891,
	},
	["PostAdvance"] = {
		fields = {
			{
				name = "DeltaTime",
				index = 37895,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37893,
	},
	["Advance"] = {
		fields = {
			{
				name = "Time",
				index = 37897,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 37690,
	},
	["eventStart"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37899,
				castTo = ffi.typeof("BOOL*"),
				offset = 4
			},
			{
				name = "StartPaused",
				index = 37898,
				optional = true,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 8,
		index = 37896,
		retOffset = 4,
	},
	["eventWidgetUnloaded"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38266,
				castTo = ffi.typeof("BOOL*"),
				offset = 20
			},
			{
				name = "WidgetName",
				index = 38269,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
			{
				name = "WidgetPath",
				index = 38268,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 8
			},
			{
				name = "Widget",
				index = 38267,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 16
			},
		},
		dataSize = 24,
		index = 38265,
		retOffset = 20,
	},
	["eventWidgetInitialized"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38261,
				castTo = ffi.typeof("BOOL*"),
				offset = 20
			},
			{
				name = "WidgetName",
				index = 38264,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
			{
				name = "WidgetPath",
				index = 38263,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 8
			},
			{
				name = "Widget",
				index = 38262,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 16
			},
		},
		dataSize = 24,
		index = 38260,
		retOffset = 20,
	},
	["MouseHitTest"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38259,
				castTo = ffi.typeof("BOOL*"),
				offset = 0
			},
		},
		dataSize = 12,
		index = 38258,
		retOffset = 0,
	},
	["HitTest"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38254,
				castTo = ffi.typeof("BOOL*"),
				offset = 12
			},
			{
				name = "TestX",
				index = 38257,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "TestY",
				index = 38256,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 4
			},
			{
				name = "bTestShape",
				index = 38255,
				optional = true,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 8
			},
		},
		dataSize = 16,
		index = 38253,
		retOffset = 12,
	},
	["_HitTest"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38249,
				castTo = ffi.typeof("int*"),
				offset = 12
			},
			{
				name = "TestX",
				index = 38252,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "TestY",
				index = 38251,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 4
			},
			{
				name = "bTestShape",
				index = 38250,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 8
			},
		},
		dataSize = 16,
		index = 38248,
		retOffset = 12,
	},
	["GetNextHighestDepth"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38247,
				castTo = ffi.typeof("float*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 38246,
		retOffset = 0,
	},
	["RemoveMovieClip"] = {
		fields = {
		},
		dataSize = 0,
		index = 38245,
	},
	["AttachMovie"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38240,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 32
			},
			{
				name = "symbolname",
				index = 38244,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "instancename",
				index = 38243,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 12
			},
			{
				name = "Depth",
				index = 38242,
				optional = true,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 24
			},
			{
				name = "Type",
				index = 38241,
				optional = true,
				type = ffi.typeof("struct UClass*"),
				castTo = ffi.typeof("struct UClass**"),
				flags = 1,
				offset = 28
			},
		},
		dataSize = 36,
		index = 38239,
		retOffset = 32,
	},
	["CreateEmptyMovieClip"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38235,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 20
			},
			{
				name = "instancename",
				index = 38238,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Depth",
				index = 38237,
				optional = true,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
			{
				name = "Type",
				index = 38236,
				optional = true,
				type = ffi.typeof("struct UClass*"),
				castTo = ffi.typeof("struct UClass**"),
				flags = 1,
				offset = 16
			},
		},
		dataSize = 24,
		index = 38234,
		retOffset = 20,
	},
	["GotoAndStopI"] = {
		fields = {
			{
				name = "frame",
				index = 38233,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 38232,
	},
	["GotoAndStop"] = {
		fields = {
			{
				name = "frame",
				index = 38231,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38230,
	},
	["GotoAndPlayI"] = {
		fields = {
			{
				name = "frame",
				index = 38229,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 38228,
	},
	["GotoAndPlay"] = {
		fields = {
			{
				name = "frame",
				index = 38227,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38226,
	},
	["ActionScriptArray"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38223,
				cType = ffi.typeof("struct TArray_UGFxObjectPtr"),
				castTo = ffi.typeof("struct TArray_UGFxObjectPtr*"),
				TArray = true,
				offset = 12
			},
			{
				name = "Path",
				index = 38225,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 24,
		index = 38222,
		retOffset = 12,
	},
	["ActionScriptObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38220,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 12
			},
			{
				name = "Path",
				index = 38221,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 38219,
		retOffset = 12,
	},
	["ActionScriptString"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38217,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 12
			},
			{
				name = "Method",
				index = 38218,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 24,
		index = 38216,
		retOffset = 12,
	},
	["ActionScriptFloat"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38214,
				castTo = ffi.typeof("float*"),
				offset = 12
			},
			{
				name = "Method",
				index = 38215,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 38213,
		retOffset = 12,
	},
	["ActionScriptInt"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38211,
				castTo = ffi.typeof("int*"),
				offset = 12
			},
			{
				name = "Method",
				index = 38212,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 38210,
		retOffset = 12,
	},
	["ActionScriptVoid"] = {
		fields = {
			{
				name = "Method",
				index = 38209,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38208,
	},
	["Invoke"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38206,
				cType = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				offset = 24
			},
			{
				name = "Member",
				index = 38207,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "args",
				index = 38204,
				type = ffi.typeof("struct TArray_FASValue"),
				castTo = ffi.typeof("struct TArray_FASValue*"),
				flags = 8,
				offset = 12
			},
		},
		dataSize = 48,
		index = 38203,
		retOffset = 24,
	},
	["ActionScriptSetFunctionOn"] = {
		fields = {
			{
				name = "Target",
				index = 38202,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Member",
				index = 38201,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
		},
		dataSize = 16,
		index = 38200,
	},
	["ActionScriptSetFunction"] = {
		fields = {
			{
				name = "Member",
				index = 38199,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38198,
	},
	["SetElementMemberString"] = {
		fields = {
			{
				name = "Index",
				index = 38197,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38196,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
			{
				name = "S",
				index = 38195,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 16
			},
		},
		dataSize = 28,
		index = 38194,
	},
	["SetElementMemberFloat"] = {
		fields = {
			{
				name = "Index",
				index = 38193,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38192,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
			{
				name = "F",
				index = 38191,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 16
			},
		},
		dataSize = 20,
		index = 38190,
	},
	["SetElementMemberBool"] = {
		fields = {
			{
				name = "Index",
				index = 38189,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38188,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
			{
				name = "B",
				index = 38187,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 16
			},
		},
		dataSize = 20,
		index = 38186,
	},
	["SetElementMemberObject"] = {
		fields = {
			{
				name = "Index",
				index = 38185,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38184,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
			{
				name = "val",
				index = 38183,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 16
			},
		},
		dataSize = 20,
		index = 38182,
	},
	["SetElementMember"] = {
		fields = {
			{
				name = "Index",
				index = 38181,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38180,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
			{
				name = "Arg",
				index = 38179,
				type = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				flags = 64,
				offset = 16
			},
		},
		dataSize = 40,
		index = 38178,
	},
	["GetElementMemberString"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38175,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 16
			},
			{
				name = "Index",
				index = 38177,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38176,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
		},
		dataSize = 28,
		index = 38174,
		retOffset = 16,
	},
	["GetElementMemberFloat"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38171,
				castTo = ffi.typeof("float*"),
				offset = 16
			},
			{
				name = "Index",
				index = 38173,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38172,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
		},
		dataSize = 20,
		index = 38170,
		retOffset = 16,
	},
	["GetElementMemberBool"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38167,
				castTo = ffi.typeof("BOOL*"),
				offset = 16
			},
			{
				name = "Index",
				index = 38169,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38168,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
		},
		dataSize = 20,
		index = 38166,
		retOffset = 16,
	},
	["GetElementMemberObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38162,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 20
			},
			{
				name = "Index",
				index = 38165,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38164,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
			{
				name = "Type",
				index = 38163,
				optional = true,
				type = ffi.typeof("struct UClass*"),
				castTo = ffi.typeof("struct UClass**"),
				flags = 1,
				offset = 16
			},
		},
		dataSize = 24,
		index = 38161,
		retOffset = 20,
	},
	["GetElementMember"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38158,
				cType = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				offset = 16
			},
			{
				name = "Index",
				index = 38160,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Member",
				index = 38159,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
		},
		dataSize = 40,
		index = 38157,
		retOffset = 16,
	},
	["SetElementColorTransform"] = {
		fields = {
			{
				name = "Index",
				index = 38156,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "cxform",
				index = 38155,
				type = ffi.typeof("struct FASColorTransform"),
				castTo = ffi.typeof("struct FASColorTransform*"),
				flags = 64,
				offset = 4
			},
		},
		dataSize = 36,
		index = 38154,
	},
	["SetElementPosition"] = {
		fields = {
			{
				name = "Index",
				index = 38153,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "X",
				index = 38152,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 4
			},
			{
				name = "Y",
				index = 38151,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 8
			},
		},
		dataSize = 12,
		index = 38150,
	},
	["SetElementVisible"] = {
		fields = {
			{
				name = "Index",
				index = 38149,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Visible",
				index = 38148,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 38147,
	},
	["SetElementDisplayMatrix"] = {
		fields = {
			{
				name = "Index",
				index = 38146,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "M",
				index = 38145,
				type = ffi.typeof("struct FMatrix"),
				castTo = ffi.typeof("struct FMatrix*"),
				flags = 64,
				offset = 16
			},
		},
		dataSize = 80,
		index = 38144,
	},
	["SetElementDisplayInfo"] = {
		fields = {
			{
				name = "Index",
				index = 38143,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "D",
				index = 38142,
				type = ffi.typeof("struct FASDisplayInfo"),
				castTo = ffi.typeof("struct FASDisplayInfo*"),
				flags = 64,
				offset = 4
			},
		},
		dataSize = 48,
		index = 38141,
	},
	["GetElementDisplayMatrix"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38139,
				cType = ffi.typeof("struct FMatrix"),
				castTo = ffi.typeof("struct FMatrix*"),
				offset = 16
			},
			{
				name = "Index",
				index = 38140,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 80,
		index = 38138,
		retOffset = 16,
	},
	["GetElementDisplayInfo"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38136,
				cType = ffi.typeof("struct FASDisplayInfo"),
				castTo = ffi.typeof("struct FASDisplayInfo*"),
				offset = 4
			},
			{
				name = "Index",
				index = 38137,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 48,
		index = 38135,
		retOffset = 4,
	},
	["SetElementString"] = {
		fields = {
			{
				name = "Index",
				index = 38134,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "S",
				index = 38133,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
		},
		dataSize = 16,
		index = 38132,
	},
	["SetElementFloat"] = {
		fields = {
			{
				name = "Index",
				index = 38131,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "F",
				index = 38130,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 38129,
	},
	["SetElementBool"] = {
		fields = {
			{
				name = "Index",
				index = 38128,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "B",
				index = 38127,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 38126,
	},
	["SetElementObject"] = {
		fields = {
			{
				name = "Index",
				index = 38125,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "val",
				index = 38124,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 4
			},
		},
		dataSize = 8,
		index = 38123,
	},
	["SetElement"] = {
		fields = {
			{
				name = "Index",
				index = 38122,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Arg",
				index = 38121,
				type = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				flags = 64,
				offset = 4
			},
		},
		dataSize = 28,
		index = 38120,
	},
	["GetElementString"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38118,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 4
			},
			{
				name = "Index",
				index = 38119,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 16,
		index = 38117,
		retOffset = 4,
	},
	["GetElementFloat"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38115,
				castTo = ffi.typeof("float*"),
				offset = 4
			},
			{
				name = "Index",
				index = 38116,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 8,
		index = 38114,
		retOffset = 4,
	},
	["GetElementBool"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38112,
				castTo = ffi.typeof("BOOL*"),
				offset = 4
			},
			{
				name = "Index",
				index = 38113,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 8,
		index = 38111,
		retOffset = 4,
	},
	["GetElementObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38108,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 8
			},
			{
				name = "Index",
				index = 38110,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Type",
				index = 38109,
				optional = true,
				type = ffi.typeof("struct UClass*"),
				castTo = ffi.typeof("struct UClass**"),
				flags = 1,
				offset = 4
			},
		},
		dataSize = 12,
		index = 38107,
		retOffset = 8,
	},
	["GetElement"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38105,
				cType = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				offset = 4
			},
			{
				name = "Index",
				index = 38106,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 28,
		index = 38104,
		retOffset = 4,
	},
	["SetText"] = {
		fields = {
			{
				name = "Text",
				index = 38103,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "InContext",
				index = 38102,
				optional = true,
				className = "UTranslationContext",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 12
			},
		},
		dataSize = 16,
		index = 38101,
	},
	["GetText"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38100,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38099,
		retOffset = 0,
	},
	["SetVisible"] = {
		fields = {
			{
				name = "Visible",
				index = 38098,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 4,
		index = 38097,
	},
	["SetDisplayMatrix3D"] = {
		fields = {
			{
				name = "M",
				index = 38096,
				type = ffi.typeof("struct FMatrix"),
				castTo = ffi.typeof("struct FMatrix*"),
				flags = 64,
				offset = 0
			},
		},
		dataSize = 64,
		index = 38095,
	},
	["SetDisplayMatrix"] = {
		fields = {
			{
				name = "M",
				index = 38094,
				type = ffi.typeof("struct FMatrix"),
				castTo = ffi.typeof("struct FMatrix*"),
				flags = 64,
				offset = 0
			},
		},
		dataSize = 64,
		index = 38093,
	},
	["SetColorTransform"] = {
		fields = {
			{
				name = "cxform",
				index = 38092,
				type = ffi.typeof("struct FASColorTransform"),
				castTo = ffi.typeof("struct FASColorTransform*"),
				flags = 64,
				offset = 0
			},
		},
		dataSize = 32,
		index = 38091,
	},
	["SetPosition"] = {
		fields = {
			{
				name = "X",
				index = 38090,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 0
			},
			{
				name = "Y",
				index = 38089,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 4
			},
		},
		dataSize = 8,
		index = 38088,
	},
	["SetDisplayInfo"] = {
		fields = {
			{
				name = "D",
				isRet = true,
				index = 38087,
				isOutParm = true,
				cType = ffi.typeof("struct FASDisplayInfo"),
				castTo = ffi.typeof("struct FASDisplayInfo*"),
				offset = 0
			},
		},
		dataSize = 44,
		index = 38086,
	},
	["GetDisplayMatrix"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38085,
				cType = ffi.typeof("struct FMatrix"),
				castTo = ffi.typeof("struct FMatrix*"),
				offset = 0
			},
		},
		dataSize = 64,
		index = 38084,
		retOffset = 0,
	},
	["GetColorTransform"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38083,
				cType = ffi.typeof("struct FASColorTransform"),
				castTo = ffi.typeof("struct FASColorTransform*"),
				offset = 0
			},
		},
		dataSize = 32,
		index = 38082,
		retOffset = 0,
	},
	["GetPosition"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38079,
				castTo = ffi.typeof("BOOL*"),
				offset = 8
			},
			{
				name = "X",
				isRet = true,
				index = 38081,
				isOutParm = true,
				castTo = ffi.typeof("float*"),
				offset = 0
			},
			{
				name = "Y",
				isRet = true,
				index = 38080,
				isOutParm = true,
				castTo = ffi.typeof("float*"),
				offset = 4
			},
		},
		dataSize = 12,
		index = 38078,
		retOffset = 8,
	},
	["GetDisplayInfo"] = {
		fields = {
			{
				name = "D",
				isRet = true,
				index = 38077,
				isOutParm = true,
				cType = ffi.typeof("struct FASDisplayInfo"),
				castTo = ffi.typeof("struct FASDisplayInfo*"),
				offset = 0
			},
		},
		dataSize = 44,
		index = 38076,
	},
	["TranslateString"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38073,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 16
			},
			{
				name = "StringToTranslate",
				index = 38075,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "InContext",
				index = 38074,
				optional = true,
				className = "UTranslationContext",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 12
			},
		},
		dataSize = 28,
		index = 38072,
		retOffset = 16,
	},
	["SetFunction"] = {
		fields = {
			{
				name = "Member",
				index = 38071,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Context",
				index = 38070,
				className = "UObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 12
			},
			{
				name = "fname",
				index = 38069,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 16
			},
		},
		dataSize = 24,
		index = 38068,
	},
	["SetObject"] = {
		fields = {
			{
				name = "Member",
				index = 38067,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "val",
				index = 38066,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 12
			},
		},
		dataSize = 16,
		index = 38065,
	},
	["SetString"] = {
		fields = {
			{
				name = "Member",
				index = 38064,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "S",
				index = 38063,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 12
			},
			{
				name = "InContext",
				index = 38062,
				optional = true,
				className = "UTranslationContext",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 24
			},
		},
		dataSize = 28,
		index = 38061,
	},
	["SetFloat"] = {
		fields = {
			{
				name = "Member",
				index = 38060,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "F",
				index = 38059,
				type = "number",
				castTo = ffi.typeof("float*"),
				flags = 32,
				offset = 12
			},
		},
		dataSize = 16,
		index = 38058,
	},
	["SetBool"] = {
		fields = {
			{
				name = "Member",
				index = 38057,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "B",
				index = 38056,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 12
			},
		},
		dataSize = 16,
		index = 38055,
	},
	["Set"] = {
		fields = {
			{
				name = "Member",
				index = 38054,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Arg",
				index = 38053,
				type = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				flags = 64,
				offset = 12
			},
		},
		dataSize = 36,
		index = 38052,
	},
	["GetObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38049,
				castTo = ffi.typeof("struct UGFxObject**"),
				offset = 16
			},
			{
				name = "Member",
				index = 38051,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "Type",
				index = 38050,
				optional = true,
				type = ffi.typeof("struct UClass*"),
				castTo = ffi.typeof("struct UClass**"),
				flags = 1,
				offset = 12
			},
		},
		dataSize = 20,
		index = 38048,
		retOffset = 16,
	},
	["GetString"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38046,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 12
			},
			{
				name = "Member",
				index = 38047,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 24,
		index = 38045,
		retOffset = 12,
	},
	["GetFloat"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38043,
				castTo = ffi.typeof("float*"),
				offset = 12
			},
			{
				name = "Member",
				index = 38044,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 38042,
		retOffset = 12,
	},
	["GetBool"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38040,
				castTo = ffi.typeof("BOOL*"),
				offset = 12
			},
			{
				name = "Member",
				index = 38041,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 16,
		index = 38039,
		retOffset = 12,
	},
	["Get"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38037,
				cType = ffi.typeof("struct FASValue"),
				castTo = ffi.typeof("struct FASValue*"),
				offset = 12
			},
			{
				name = "Member",
				index = 38038,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 36,
		index = 38036,
		retOffset = 12,
	},
	["ASRemoveAllEventListeners"] = {
		fields = {
			{
				name = "Event",
				index = 38300,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38290,
	},
	["ASAddEventListener"] = {
		fields = {
			{
				name = "Type",
				index = 38299,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "O",
				index = 38298,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 12
			},
			{
				name = "func",
				index = 38297,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 16
			},
		},
		dataSize = 28,
		index = 38287,
	},
	["SetListener"] = {
		fields = {
			{
				name = "O",
				index = 38296,
				className = "UGFxObject",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Member",
				index = 38295,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 4
			},
			{
				name = "Listener",
				index = 38294,
				type = ffi.typeof("struct FScriptDelegate"),
				castTo = ffi.typeof("struct FScriptDelegate*"),
				flags = 0,
				offset = 16
			},
		},
		dataSize = 28,
		index = 38286,
	},
	["GetEventStringFromTypename"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38292,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 8
			},
			{
				name = "Typename",
				index = 38293,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
		},
		dataSize = 32,
		index = 38285,
		retOffset = 8,
	},
	["RemoveAllEventListeners"] = {
		fields = {
			{
				name = "Event",
				index = 38289,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38288,
	},
	["AddEventListener"] = {
		fields = {
			{
				name = "Type",
				index = 38284,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 0
			},
			{
				name = "Listener",
				index = 38283,
				type = ffi.typeof("struct FScriptDelegate"),
				castTo = ffi.typeof("struct FScriptDelegate*"),
				flags = 0,
				offset = 8
			},
		},
		dataSize = 36,
		index = 38281,
	},
	["EventListener"] = {
		fields = {
			{
				name = "Data",
				index = 38279,
				type = ffi.typeof("struct FEventData"),
				castTo = ffi.typeof("struct FEventData*"),
				flags = 64,
				offset = 0
			},
		},
		dataSize = 36,
		index = 38278,
	},
	["GetPathForLoadMovie"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37614,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 0
			},
		},
		dataSize = 12,
		index = 37613,
		retOffset = 0,
	},
	["eventIsValidLevelSequenceObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37618,
				castTo = ffi.typeof("BOOL*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37617,
		retOffset = 0,
	},
	["eventIsValidLevelSequenceObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37622,
				castTo = ffi.typeof("BOOL*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37621,
		retOffset = 0,
	},
	["eventIsValidLevelSequenceObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37980,
				castTo = ffi.typeof("BOOL*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37979,
		retOffset = 0,
	},
	["eventIsValidLevelSequenceObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 37999,
				castTo = ffi.typeof("BOOL*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 37998,
		retOffset = 0,
	},
	["eventIsValidLevelSequenceObject"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38006,
				castTo = ffi.typeof("BOOL*"),
				offset = 0
			},
		},
		dataSize = 4,
		index = 38005,
		retOffset = 0,
	},
	["eventFSCommand"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38345,
				castTo = ffi.typeof("BOOL*"),
				offset = 32
			},
			{
				name = "Movie",
				index = 38349,
				className = "UGFxMoviePlayer",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "Event",
				index = 38348,
				className = "UGFxEvent_FSCommand",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 4
			},
			{
				name = "Cmd",
				index = 38347,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 8
			},
			{
				name = "Arg",
				index = 38346,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 20
			},
		},
		dataSize = 36,
		index = 38344,
		retOffset = 32,
	},
	["SaveSubscriberValue"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38326,
				castTo = ffi.typeof("BOOL*"),
				offset = 16
			},
			{
				name = "out_BoundDataStores",
				isRet = true,
				index = 38324,
				isOutParm = true,
				cType = ffi.typeof("struct TArray_UUIDataStorePtr"),
				castTo = ffi.typeof("struct TArray_UUIDataStorePtr*"),
				TArray = true,
				offset = 0
			},
			{
				name = "BindingIndex",
				index = 38327,
				optional = true,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
		},
		dataSize = 20,
		index = 38323,
		retOffset = 16,
	},
	["ClearBoundDataStores"] = {
		fields = {
		},
		dataSize = 0,
		index = 38322,
	},
	["GetBoundDataStores"] = {
		fields = {
			{
				name = "out_BoundDataStores",
				isRet = true,
				index = 38320,
				isOutParm = true,
				cType = ffi.typeof("struct TArray_UUIDataStorePtr"),
				castTo = ffi.typeof("struct TArray_UUIDataStorePtr*"),
				TArray = true,
				offset = 0
			},
		},
		dataSize = 12,
		index = 38319,
	},
	["NotifyDataStoreValueUpdated"] = {
		fields = {
			{
				name = "SourceDataStore",
				index = 38318,
				className = "UUIDataStore",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 0
			},
			{
				name = "bValuesInvalidated",
				index = 38317,
				type = "boolean",
				castTo = ffi.typeof("BOOL*"),
				flags = 32,
				offset = 4
			},
			{
				name = "PropertyTag",
				index = 38316,
				type = ffi.typeof("struct FName"),
				castTo = ffi.typeof("struct FName*"),
				flags = 2,
				offset = 8
			},
			{
				name = "SourceProvider",
				index = 38315,
				className = "UUIDataProvider",
				castTo = ffi.typeof("struct UObject**"),
				flags = 16,
				offset = 16
			},
			{
				name = "ArrayIndex",
				index = 38314,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 20
			},
		},
		dataSize = 24,
		index = 38313,
	},
	["RefreshSubscriberValue"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38311,
				castTo = ffi.typeof("BOOL*"),
				offset = 4
			},
			{
				name = "BindingIndex",
				index = 38312,
				optional = true,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 8,
		index = 38310,
		retOffset = 4,
	},
	["GetDataStoreBinding"] = {
		fields = {
			{
				name = "ReturnValue",
				isRet = true,
				index = 38308,
				cType = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				TArray = true,
				offset = 4
			},
			{
				name = "BindingIndex",
				index = 38309,
				optional = true,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 0
			},
		},
		dataSize = 16,
		index = 38307,
		retOffset = 4,
	},
	["SetDataStoreBinding"] = {
		fields = {
			{
				name = "MarkupText",
				index = 38306,
				type = ffi.typeof("struct FString"),
				castTo = ffi.typeof("struct FString*"),
				flags = 4,
				offset = 0
			},
			{
				name = "BindingIndex",
				index = 38305,
				optional = true,
				type = "number",
				castTo = ffi.typeof("int*"),
				flags = 32,
				offset = 12
			},
		},
		dataSize = 16,
		index = 38304,
	},
	["PublishValues"] = {
		fields = {
		},
		dataSize = 0,
		index = 38303,
	},
