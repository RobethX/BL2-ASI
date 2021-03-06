#include "stdafx.h"
#include "detours.h"
#include "BL2-SDK.h"
#include "Util.h"
#include "Settings.h"
#include "Logging.h"

static HINSTANCE hOriginalBink = NULL;
FARPROC p[78] = { 0 };
wchar_t exeBaseFolder[FILENAME_MAX];
int DLLcount = 0;

// Sets exeBaseFolder to hold current executable's path, including "\"
void SetExecutableFolder()
{
	GetModuleFileName(NULL, exeBaseFolder, FILENAME_MAX);
	int x = sizeof(exeBaseFolder) - 1;
	while (exeBaseFolder[x] != '\\')
		x--;
	exeBaseFolder[x + 1] = '\0';
}

// --- Load Plugins ---
void loadPlugins(const wchar_t *folder)
{
	WIN32_FIND_DATA fd;
	wchar_t targetfilter[FILENAME_MAX];
	wchar_t currfile[FILENAME_MAX];
	wcscpy_s(targetfilter, exeBaseFolder);
	wcscat_s(targetfilter, folder);
	PathCombine(targetfilter, targetfilter, nullptr);
	if (CreateDirectory(targetfilter, nullptr) || ERROR_ALREADY_EXISTS == GetLastError()) {
		//success
	}
	else {
		Logging::LogF("Failed to create plugins folder");
	}
	wcscat_s(targetfilter, L"\\*.dll");
	PathCombine(targetfilter, targetfilter, nullptr);
	HANDLE dllFile = FindFirstFile(targetfilter, &fd);
	if (dllFile == INVALID_HANDLE_VALUE) {
		return;
	}
	do
	{
		if (!(fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
		{
			wcscpy_s(currfile, exeBaseFolder);
			wcscat_s(currfile, folder);
			wcscat_s(currfile, L"\\");
			wcscat_s(currfile, fd.cFileName);
			PathCombine(currfile, currfile, nullptr);

			if (PathMatchSpec(_wcslwr(currfile), L"*.dll"))
			{
				if (LoadLibrary(currfile))
				{
					Logging::LogF("Plugin loaded: %s\n", currfile);
					DLLcount++;
				}
				else {
					Logging::LogF("Plugin error: %s\n", currfile);
					MessageBox(nullptr, currfile, TEXT("Error"), MB_OK);
				}
			}
			else {
				MessageBox(nullptr, TEXT("Failed to load plugin"), currfile, MB_OK);
			}
		}
	} while (FindNextFile(dllFile, &fd));
	FindClose(dllFile);
}

void GetAddresses()
{
	hOriginalBink = LoadLibrary(L"binkw23.dll");
	if (hOriginalBink)
	{
		/*
		p[0] = GetProcAddress(hOriginalBink, "BinkLogoAddress");
		p[1] = GetProcAddress(hOriginalBink, "BinkBufferSetDirectDraw");
		p[2] = GetProcAddress(hOriginalBink, "BinkIsSoftwareCursor");
		p[3] = GetProcAddress(hOriginalBink, "BinkCheckCursor");
		p[4] = GetProcAddress(hOriginalBink, "BinkRestoreCursor");
		p[5] = GetProcAddress(hOriginalBink, "BinkBufferSetResolution");
		p[6] = GetProcAddress(hOriginalBink, "BinkBufferCheckWinPos");
		p[7] = GetProcAddress(hOriginalBink, "BinkBufferSetOffset");
		p[8] = GetProcAddress(hOriginalBink, "BinkBufferOpen");
		p[9] = GetProcAddress(hOriginalBink, "BinkBufferClose");
		p[10] = GetProcAddress(hOriginalBink, "BinkBufferLock");
		p[11] = GetProcAddress(hOriginalBink, "BinkBufferUnlock");
		p[12] = GetProcAddress(hOriginalBink, "BinkBufferBlit");
		p[13] = GetProcAddress(hOriginalBink, "BinkBufferSetScale");
		p[14] = GetProcAddress(hOriginalBink, "BinkBufferSetHWND");
		p[15] = GetProcAddress(hOriginalBink, "BinkBufferGetDescription");
		p[16] = GetProcAddress(hOriginalBink, "BinkBufferGetError");
		p[17] = GetProcAddress(hOriginalBink, "BinkBufferClear");
		p[18] = GetProcAddress(hOriginalBink, "BinkDDSurfaceType");
		p[19] = GetProcAddress(hOriginalBink, "BinkDX8SurfaceType");
		p[20] = GetProcAddress(hOriginalBink, "BinkDX9SurfaceType");
		p[21] = GetProcAddress(hOriginalBink, "BinkSetError");
		p[22] = GetProcAddress(hOriginalBink, "BinkGetError");
		p[23] = GetProcAddress(hOriginalBink, "BinkSetSoundSystem");
		p[24] = GetProcAddress(hOriginalBink, "BinkSetFrameRate");
		p[25] = GetProcAddress(hOriginalBink, "BinkSetFileOffset");
		p[26] = GetProcAddress(hOriginalBink, "BinkSetIOSize");
		p[27] = GetProcAddress(hOriginalBink, "BinkSetIO");
		p[28] = GetProcAddress(hOriginalBink, "BinkSetSimulate");
		p[29] = GetProcAddress(hOriginalBink, "BinkSetSoundTrack");
		p[30] = GetProcAddress(hOriginalBink, "BinkGetFrameBuffersInfo");
		p[31] = GetProcAddress(hOriginalBink, "BinkRegisterFrameBuffers");
		p[32] = GetProcAddress(hOriginalBink, "BinkOpen");
		p[33] = GetProcAddress(hOriginalBink, "BinkOpenWithOptions");
		p[34] = GetProcAddress(hOriginalBink, "BinkCopyToBuffer");
		p[35] = GetProcAddress(hOriginalBink, "BinkCopyToBufferRect");
		p[36] = GetProcAddress(hOriginalBink, "BinkDoFramePlane");
		p[37] = GetProcAddress(hOriginalBink, "BinkDoFrame");
		p[38] = GetProcAddress(hOriginalBink, "BinkShouldSkip");
		p[39] = GetProcAddress(hOriginalBink, "BinkNextFrame");
		p[40] = GetProcAddress(hOriginalBink, "BinkGetKeyFrame");
		p[41] = GetProcAddress(hOriginalBink, "BinkGoto");
		p[42] = GetProcAddress(hOriginalBink, "BinkFreeGlobals");
		p[43] = GetProcAddress(hOriginalBink, "BinkClose");
		p[44] = GetProcAddress(hOriginalBink, "BinkGetPlatformInfo");
		p[45] = GetProcAddress(hOriginalBink, "BinkWait");
		p[46] = GetProcAddress(hOriginalBink, "BinkPause");
		p[47] = GetProcAddress(hOriginalBink, "BinkGetSummary");
		p[48] = GetProcAddress(hOriginalBink, "BinkGetRealtime");
		p[49] = GetProcAddress(hOriginalBink, "BinkGetRects");
		p[50] = GetProcAddress(hOriginalBink, "BinkService");
		p[51] = GetProcAddress(hOriginalBink, "BinkSetVolume");
		p[52] = GetProcAddress(hOriginalBink, "BinkSetSpeakerVolumes");
		p[53] = GetProcAddress(hOriginalBink, "BinkSetPan");
		p[54] = GetProcAddress(hOriginalBink, "BinkGetTrackType");
		p[55] = GetProcAddress(hOriginalBink, "BinkGetTrackMaxSize");
		p[56] = GetProcAddress(hOriginalBink, "BinkGetTrackID");
		p[57] = GetProcAddress(hOriginalBink, "BinkOpenTrack");
		p[58] = GetProcAddress(hOriginalBink, "BinkCloseTrack");
		p[59] = GetProcAddress(hOriginalBink, "BinkGetTrackData");
		p[60] = GetProcAddress(hOriginalBink, "BinkSetVideoOnOff");
		p[61] = GetProcAddress(hOriginalBink, "BinkSetSoundOnOff");
		p[62] = GetProcAddress(hOriginalBink, "BinkSetMemory");
		p[63] = GetProcAddress(hOriginalBink, "BinkSetWillLoop");
		p[64] = GetProcAddress(hOriginalBink, "BinkControlBackgroundIO");
		p[65] = GetProcAddress(hOriginalBink, "BinkOpenWaveOut");
		p[66] = GetProcAddress(hOriginalBink, "BinkOpenDirectSound");
		p[67] = GetProcAddress(hOriginalBink, "BinkOpenMiles");
		p[68] = GetProcAddress(hOriginalBink, "RADTimerRead");
		p[69] = GetProcAddress(hOriginalBink, "BinkStartAsyncThread");
		p[70] = GetProcAddress(hOriginalBink, "BinkRequestStopAsyncThread");
		p[71] = GetProcAddress(hOriginalBink, "BinkWaitStopAsyncThread");
		p[72] = GetProcAddress(hOriginalBink, "BinkDoFrameAsync");
		p[73] = GetProcAddress(hOriginalBink, "BinkDoFrameAsyncWait");
		p[74] = GetProcAddress(hOriginalBink, "BinkOpenXAudio2");
		p[75] = GetProcAddress(hOriginalBink, "BinkControlPlatformFeatures");
		p[76] = GetProcAddress(hOriginalBink, "BinkGetPalette");
		*/

		p[0] = GetProcAddress(hOriginalBink, "_BinkBufferBlit@12");
		p[1] = GetProcAddress(hOriginalBink, "_BinkBufferCheckWinPos@12");
		p[2] = GetProcAddress(hOriginalBink, "_BinkBufferClear@8");
		p[3] = GetProcAddress(hOriginalBink, "_BinkBufferClose@4");
		p[4] = GetProcAddress(hOriginalBink, "_BinkBufferGetDescription@4");
		p[5] = GetProcAddress(hOriginalBink, "_BinkBufferGetError@0");
		p[6] = GetProcAddress(hOriginalBink, "_BinkBufferLock@4");
		p[7] = GetProcAddress(hOriginalBink, "_BinkBufferOpen@16");
		p[8] = GetProcAddress(hOriginalBink, "_BinkBufferSetDirectDraw@8");
		p[9] = GetProcAddress(hOriginalBink, "_BinkBufferSetHWND@8");
		p[10] = GetProcAddress(hOriginalBink, "_BinkBufferSetOffset@12");
		p[11] = GetProcAddress(hOriginalBink, "_BinkBufferSetResolution@12");
		p[12] = GetProcAddress(hOriginalBink, "_BinkBufferSetScale@12");
		p[13] = GetProcAddress(hOriginalBink, "_BinkBufferUnlock@4");
		p[14] = GetProcAddress(hOriginalBink, "_BinkCheckCursor@20");
		p[15] = GetProcAddress(hOriginalBink, "_BinkClose@4");
		p[16] = GetProcAddress(hOriginalBink, "_BinkCloseTrack@4");
		p[17] = GetProcAddress(hOriginalBink, "_BinkControlBackgroundIO@8");
		p[18] = GetProcAddress(hOriginalBink, "_BinkControlPlatformFeatures@8");
		p[19] = GetProcAddress(hOriginalBink, "_BinkCopyToBuffer@28");
		p[20] = GetProcAddress(hOriginalBink, "_BinkCopyToBufferRect@44");
		p[21] = GetProcAddress(hOriginalBink, "_BinkDDSurfaceType@4");
		p[22] = GetProcAddress(hOriginalBink, "_BinkDX8SurfaceType@4");
		p[23] = GetProcAddress(hOriginalBink, "_BinkDX9SurfaceType@4");
		p[24] = GetProcAddress(hOriginalBink, "_BinkDoFrame@4");
		p[25] = GetProcAddress(hOriginalBink, "_BinkGetError@0");
		p[26] = GetProcAddress(hOriginalBink, "_BinkGetFrameBuffersInfo@8");
		p[27] = GetProcAddress(hOriginalBink, "_BinkGetKeyFrame@12");
		p[28] = GetProcAddress(hOriginalBink, "_BinkGetPalette@4");
		p[29] = GetProcAddress(hOriginalBink, "_BinkGetRealtime@12");
		p[30] = GetProcAddress(hOriginalBink, "_BinkGetRects@8");
		p[31] = GetProcAddress(hOriginalBink, "_BinkGetSummary@8");
		p[32] = GetProcAddress(hOriginalBink, "_BinkGetTrackData@8");
		p[33] = GetProcAddress(hOriginalBink, "_BinkGetTrackID@8");
		p[34] = GetProcAddress(hOriginalBink, "_BinkGetTrackMaxSize@8");
		p[35] = GetProcAddress(hOriginalBink, "_BinkGetTrackType@8");
		p[36] = GetProcAddress(hOriginalBink, "_BinkGoto@12");
		p[37] = GetProcAddress(hOriginalBink, "_BinkIsSoftwareCursor@8");
		p[38] = GetProcAddress(hOriginalBink, "_BinkLogoAddress@0");
		p[39] = GetProcAddress(hOriginalBink, "_BinkNextFrame@4");
		p[40] = GetProcAddress(hOriginalBink, "_BinkOpen@8");
		p[41] = GetProcAddress(hOriginalBink, "_BinkOpenDirectSound@4");
		p[42] = GetProcAddress(hOriginalBink, "_BinkOpenMiles@4");
		p[43] = GetProcAddress(hOriginalBink, "_BinkOpenTrack@8");
		p[44] = GetProcAddress(hOriginalBink, "_BinkOpenWaveOut@4");
		p[45] = GetProcAddress(hOriginalBink, "_BinkPause@8");
		p[46] = GetProcAddress(hOriginalBink, "_BinkRegisterFrameBuffers@8");
		p[47] = GetProcAddress(hOriginalBink, "_BinkRestoreCursor@4");
		p[48] = GetProcAddress(hOriginalBink, "_BinkService@4");
		p[49] = GetProcAddress(hOriginalBink, "_BinkSetError@4");
		p[50] = GetProcAddress(hOriginalBink, "_BinkSetFrameRate@8");
		p[51] = GetProcAddress(hOriginalBink, "_BinkSetIO@4");
		p[52] = GetProcAddress(hOriginalBink, "_BinkSetIOSize@4");
		p[53] = GetProcAddress(hOriginalBink, "_BinkSetMemory@8");
		p[54] = GetProcAddress(hOriginalBink, "_BinkSetMixBinVolumes@20");
		p[55] = GetProcAddress(hOriginalBink, "_BinkSetMixBins@16");
		p[56] = GetProcAddress(hOriginalBink, "_BinkSetPan@12");
		p[57] = GetProcAddress(hOriginalBink, "_BinkSetSimulate@4");
		p[58] = GetProcAddress(hOriginalBink, "_BinkSetSoundOnOff@8");
		p[59] = GetProcAddress(hOriginalBink, "_BinkSetSoundSystem@8");
		p[60] = GetProcAddress(hOriginalBink, "_BinkSetSoundTrack@8");
		p[61] = GetProcAddress(hOriginalBink, "_BinkSetVideoOnOff@8");
		p[62] = GetProcAddress(hOriginalBink, "_BinkSetVolume@12");
		p[63] = GetProcAddress(hOriginalBink, "_BinkShouldSkip@4");
		p[64] = GetProcAddress(hOriginalBink, "_BinkWait@4");
		p[65] = GetProcAddress(hOriginalBink, "_RADTimerRead@0");
		p[66] = GetProcAddress(hOriginalBink, "BinkSetFileOffset");
		p[67] = GetProcAddress(hOriginalBink, "BinkOpenWithOptions");
		p[68] = GetProcAddress(hOriginalBink, "BinkFreeGlobals");
		p[69] = GetProcAddress(hOriginalBink, "BinkGetPlatformInfo");
		p[70] = GetProcAddress(hOriginalBink, "BinkSetSpeakerVolumes");
		p[71] = GetProcAddress(hOriginalBink, "BinkSetWillLoop");
		p[72] = GetProcAddress(hOriginalBink, "BinkStartAsyncThread");
		p[73] = GetProcAddress(hOriginalBink, "BinkRequestStopAsyncThread");
		p[74] = GetProcAddress(hOriginalBink, "BinkWaitStopAsyncThread");
		p[75] = GetProcAddress(hOriginalBink, "BinkDoFrameAsync");
		p[76] = GetProcAddress(hOriginalBink, "BinkDoFrameAsyncWait");
		p[77] = GetProcAddress(hOriginalBink, "BinkOpenXAudio2");
	}
}

DWORD WINAPI Start(LPVOID lpParam)
{
	if (Util::WaitForModules(10000, { L"d3d9.dll", L"PhysXLoader.dll" }) == WAIT_TIMEOUT) {
		return 0; // One or more modules were not loaded in time
	}

	SetExecutableFolder();
	Settings::Initialize(exeBaseFolder);
	Logging::InitializeFile(Settings::GetLogFilePath());

	Logging::LogF("=========================================\n======= Borderlands Plugin Loader =======\n======= By Rob (Robeth) Chiocchio =======\n=========================================\n");
	Logging::LogF("            ><>>>>>>>>>>>><<\n        .<>>>>>>>========>>>>>><\n     .<>>>>>=    .<>>>>.   -=<>>>>.\n    />>>>=      .>>=--\>=      =>>>>\n  .>>>>=       .>>=   =>>        =>>><\n (>>>>         >>>     \\>>        =>>><\n >>>/         <>>=     =>>\\         >>>-\n(>>>         />>=       \>>=         (>>\\\n>>>)        />>>        =>>>-        >>>\n>>>=       />>>=         \\>>>        >>>\n(>>\       (>>>=          (>>>\      (>>>\n =>>>-    (>>>>            \\>>><    >>>=\n  (>>><(>>>>=              \>>>> >>>>=\n   =>>>>>>>>              (>>>>>>>>=\n     =>>>>>>               .>>>>>>=\n       ==>>>>>><..    ..><>>>>>==\n           ==>>>>>>>>>>>>>>==\n                  -===\n"); // Borderlands logo
	GetAddresses();

	if (hOriginalBink)
	{
		Logging::LogF("[Internal] Addresses loaded from binkw23.dll - OK\n");
	}
	else
	{
		Logging::LogF("[Internal] Error loading binkw23.dll!\n");
		return 0;
	}

	BL2SDK::initialize(exeBaseFolder);
	loadPlugins(L"..\\plugins");

	return 0;
}

extern "C" BOOL WINAPI DllMain(HINSTANCE hInst, DWORD reason, LPVOID)
{
	if (reason == DLL_PROCESS_ATTACH)
	{
		DisableThreadLibraryCalls(hInst);

		DetourRestoreAfterWith();
		DetourUpdateThread(GetCurrentThread());

		DWORD dwThreadId, dwThrdParam = 1;
		HANDLE hThread;
		hThread = CreateThread(NULL, 0, Start, &dwThrdParam, 0, &dwThreadId);
	}
	if (reason == DLL_PROCESS_DETACH)
	{
		BL2SDK::cleanup();
		FreeLibrary(hOriginalBink);
	}

	return 1;
}

/*

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkLogoAddress()
{
	__asm
	{
		jmp p[0 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetDirectDraw(int a1, int a2)
{
	__asm
	{
		jmp p[1 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkIsSoftwareCursor(int a1, int a2)
{
	__asm
	{
		jmp p[2 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkCheckCursor(int a1, int a2, int a3, int a4, int a5)
{
	__asm
	{
		jmp p[3 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkRestoreCursor(int a1)
{
	__asm
	{
		jmp p[4 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetResolution(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[5 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferCheckWinPos(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[6 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetOffset(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[7 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferOpen(int a1, int a2, int a3, int a4)
{
	__asm
	{
		jmp p[8 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferClose(int a1)
{
	__asm
	{
		jmp p[9 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferLock(int a1)
{
	__asm
	{
		jmp p[10 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferUnlock(int a1)
{
	__asm
	{
		jmp p[11 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferBlit(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[12 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetScale(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[13 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetHWND(int a1, int a2)
{
	__asm
	{
		jmp p[14 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferGetDescription(int a1)
{
	__asm
	{
		jmp p[15 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferGetError()
{
	__asm
	{
		jmp p[16 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferClear(int a1, int a2)
{
	__asm
	{
		jmp p[17 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDDSurfaceType(int a1)
{
	__asm
	{
		jmp p[18 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDX8SurfaceType(int a1)
{
	__asm
	{
		jmp p[19 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDX9SurfaceType(int a1)
{
	__asm
	{
		jmp p[20 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetError(int a1)
{
	__asm
	{
		jmp p[21 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetError()
{
	__asm
	{
		jmp p[22 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSoundSystem(int a1, int a2)
{
	__asm
	{
		jmp p[23 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetFrameRate(int a1, int a2)
{
	__asm
	{
		jmp p[24 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetFileOffset()
{
	__asm
	{
		jmp p[25 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetIOSize(int a1)
{
	__asm
	{
		jmp p[26 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetIO(int a1)
{
	__asm
	{
		jmp p[27 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSimulate(int a1)
{
	__asm
	{
		jmp p[28 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSoundTrack(int a1, int a2)
{
	__asm
	{
		jmp p[29 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetFrameBuffersInfo(int a1, int a2)
{
	__asm
	{
		jmp p[30 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkRegisterFrameBuffers(int a1, int a2)
{
	__asm
	{
		jmp p[31 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpen(int a1, int a2)
{
	__asm
	{
		jmp p[32 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenWithOptions()
{
	__asm
	{
		jmp p[33 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkCopyToBuffer(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
	__asm
	{
		jmp p[34 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkCopyToBufferRect(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11)
{
	__asm
	{
		jmp p[35 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDoFramePlane()
{
	__asm
	{
		jmp p[36 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDoFrame(int a1)
{
	__asm
	{
		jmp p[37 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkShouldSkip(int a1)
{
	__asm
	{
		jmp p[38 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkNextFrame(int a1)
{
	__asm
	{
		jmp p[39 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetKeyFrame(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[40 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGoto(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[41 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkFreeGlobals()
{
	__asm
	{
		jmp p[42 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkClose(int a1)
{
	__asm
	{
		jmp p[43 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetPlatformInfo()
{
	__asm
	{
		jmp p[44 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkWait(int a1)
{
	__asm
	{
		jmp p[45 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkPause(int a1, int a2)
{
	__asm
	{
		jmp p[46 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetSummary(int a1, int a2)
{
	__asm
	{
		jmp p[47 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetRealtime(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[48 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetRects(int a1, int a2)
{
	__asm
	{
		jmp p[49 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkService(int a1)
{
	__asm
	{
		jmp p[50 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetVolume(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[51 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSpeakerVolumes()
{
	__asm
	{
		jmp p[52 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetPan(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[53 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetTrackType(int a1, int a2)
{
	__asm
	{
		jmp p[54 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetTrackMaxSize(int a1, int a2)
{
	__asm
	{
		jmp p[55 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetTrackID(int a1, int a2)
{
	__asm
	{
		jmp p[56 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenTrack(int a1, int a2)
{
	__asm
	{
		jmp p[57 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkCloseTrack(int a1)
{
	__asm
	{
		jmp p[58 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetTrackData(int a1, int a2)
{
	__asm
	{
		jmp p[59 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetVideoOnOff(int a1, int a2)
{
	__asm
	{
		jmp p[60 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSoundOnOff(int a1, int a2)
{
	__asm
	{
		jmp p[61 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetMemory(int a1, int a2)
{
	__asm
	{
		jmp p[62 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetWillLoop()
{
	__asm
	{
		jmp p[63 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkControlBackgroundIO(int a1, int a2)
{
	__asm
	{
		jmp p[64 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenWaveOut(int a1)
{
	__asm
	{
		jmp p[65 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenDirectSound(int a1)
{
	__asm
	{
		jmp p[66 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenMiles(int a1)
{
	__asm
	{
		jmp p[67 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall RADTimerRead()
{
	__asm
	{
		jmp p[68 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkStartAsyncThread()
{
	__asm
	{
		jmp p[69 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkRequestStopAsyncThread()
{
	__asm
	{
		jmp p[70 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkWaitStopAsyncThread()
{
	__asm
	{
		jmp p[71 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDoFrameAsync()
{
	__asm
	{
		jmp p[72 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDoFrameAsyncWait()
{
	__asm
	{
		jmp p[73 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenXAudio2()
{
	__asm
	{
		jmp p[74 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkControlPlatformFeatures(int a1, int a2)
{
	__asm
	{
		jmp p[75 * 4];
	}
}

extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetPalette(int a1)
{
	__asm
	{
		jmp p[76 * 4];
	}
}

*/


// _BinkBufferBlit@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferBlit(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[0 * 4];
	}
}

// _BinkBufferCheckWinPos@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferCheckWinPos(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[1 * 4];
	}
}

// _BinkBufferClear@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferClear(int a1, int a2)
{
	__asm
	{
		jmp p[2 * 4];
	}
}

// _BinkBufferClose@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferClose(int a1)
{
	__asm
	{
		jmp p[3 * 4];
	}
}

// _BinkBufferGetDescription@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferGetDescription(int a1)
{
	__asm
	{
		jmp p[4 * 4];
	}
}

// _BinkBufferGetError@0
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferGetError()
{
	__asm
	{
		jmp p[5 * 4];
	}
}

// _BinkBufferLock@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferLock(int a1)
{
	__asm
	{
		jmp p[6 * 4];
	}
}

// _BinkBufferOpen@16
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferOpen(int a1, int a2, int a3, int a4)
{
	__asm
	{
		jmp p[7 * 4];
	}
}

// _BinkBufferSetDirectDraw@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetDirectDraw(int a1, int a2)
{
	__asm
	{
		jmp p[8 * 4];
	}
}

// _BinkBufferSetHWND@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetHWND(int a1, int a2)
{
	__asm
	{
		jmp p[9 * 4];
	}
}

// _BinkBufferSetOffset@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetOffset(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[10 * 4];
	}
}

// _BinkBufferSetResolution@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetResolution(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[11 * 4];
	}
}

// _BinkBufferSetScale@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferSetScale(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[12 * 4];
	}
}

// _BinkBufferUnlock@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkBufferUnlock(int a1)
{
	__asm
	{
		jmp p[13 * 4];
	}
}

// _BinkCheckCursor@20
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkCheckCursor(int a1, int a2, int a3, int a4, int a5)
{
	__asm
	{
		jmp p[14 * 4];
	}
}

// _BinkClose@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkClose(int a1)
{
	__asm
	{
		jmp p[15 * 4];
	}
}

// _BinkCloseTrack@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkCloseTrack(int a1)
{
	__asm
	{
		jmp p[16 * 4];
	}
}

// _BinkControlBackgroundIO@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkControlBackgroundIO(int a1, int a2)
{
	__asm
	{
		jmp p[17 * 4];
	}
}

// _BinkControlPlatformFeatures@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkControlPlatformFeatures(int a1, int a2)
{
	__asm
	{
		jmp p[18 * 4];
	}
}

// _BinkCopyToBuffer@28
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkCopyToBuffer(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
	__asm
	{
		jmp p[19 * 4];
	}
}

// _BinkCopyToBufferRect@44
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkCopyToBufferRect(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11)
{
	__asm
	{
		jmp p[20 * 4];
	}
}

// _BinkDDSurfaceType@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDDSurfaceType(int a1)
{
	__asm
	{
		jmp p[21 * 4];
	}
}

// _BinkDX8SurfaceType@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDX8SurfaceType(int a1)
{
	__asm
	{
		jmp p[22 * 4];
	}
}

// _BinkDX9SurfaceType@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDX9SurfaceType(int a1)
{
	__asm
	{
		jmp p[23 * 4];
	}
}

// _BinkDoFrame@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkDoFrame(int a1)
{
	__asm
	{
		jmp p[24 * 4];
	}
}

// _BinkGetError@0
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetError()
{
	__asm
	{
		jmp p[25 * 4];
	}
}

// _BinkGetFrameBuffersInfo@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetFrameBuffersInfo(int a1, int a2)
{
	__asm
	{
		jmp p[26 * 4];
	}
}

// _BinkGetKeyFrame@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetKeyFrame(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[27 * 4];
	}
}

// _BinkGetPalette@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetPalette(int a1)
{
	__asm
	{
		jmp p[28 * 4];
	}
}

// _BinkGetRealtime@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetRealtime(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[29 * 4];
	}
}

// _BinkGetRects@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetRects(int a1, int a2)
{
	__asm
	{
		jmp p[30 * 4];
	}
}

// _BinkGetSummary@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetSummary(int a1, int a2)
{
	__asm
	{
		jmp p[31 * 4];
	}
}

// _BinkGetTrackData@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetTrackData(int a1, int a2)
{
	__asm
	{
		jmp p[32 * 4];
	}
}

// _BinkGetTrackID@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetTrackID(int a1, int a2)
{
	__asm
	{
		jmp p[33 * 4];
	}
}

// _BinkGetTrackMaxSize@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetTrackMaxSize(int a1, int a2)
{
	__asm
	{
		jmp p[34 * 4];
	}
}

// _BinkGetTrackType@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGetTrackType(int a1, int a2)
{
	__asm
	{
		jmp p[35 * 4];
	}
}

// _BinkGoto@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkGoto(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[36 * 4];
	}
}

// _BinkIsSoftwareCursor@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkIsSoftwareCursor(int a1, int a2)
{
	__asm
	{
		jmp p[37 * 4];
	}
}

// _BinkLogoAddress@0
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkLogoAddress()
{
	__asm
	{
		jmp p[38 * 4];
	}
}

// _BinkNextFrame@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkNextFrame(int a1)
{
	__asm
	{
		jmp p[39 * 4];
	}
}

// _BinkOpen@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpen(int a1, int a2)
{
	__asm
	{
		jmp p[40 * 4];
	}
}

// _BinkOpenDirectSound@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenDirectSound(int a1)
{
	__asm
	{
		jmp p[41 * 4];
	}
}

// _BinkOpenMiles@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenMiles(int a1)
{
	__asm
	{
		jmp p[42 * 4];
	}
}

// _BinkOpenTrack@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenTrack(int a1, int a2)
{
	__asm
	{
		jmp p[43 * 4];
	}
}

// _BinkOpenWaveOut@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkOpenWaveOut(int a1)
{
	__asm
	{
		jmp p[44 * 4];
	}
}

// _BinkPause@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkPause(int a1, int a2)
{
	__asm
	{
		jmp p[45 * 4];
	}
}

// _BinkRegisterFrameBuffers@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkRegisterFrameBuffers(int a1, int a2)
{
	__asm
	{
		jmp p[46 * 4];
	}
}

// _BinkRestoreCursor@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkRestoreCursor(int a1)
{
	__asm
	{
		jmp p[47 * 4];
	}
}

// _BinkService@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkService(int a1)
{
	__asm
	{
		jmp p[48 * 4];
	}
}

// _BinkSetError@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetError(int a1)
{
	__asm
	{
		jmp p[49 * 4];
	}
}

// _BinkSetFrameRate@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetFrameRate(int a1, int a2)
{
	__asm
	{
		jmp p[50 * 4];
	}
}

// _BinkSetIO@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetIO(int a1)
{
	__asm
	{
		jmp p[51 * 4];
	}
}

// _BinkSetIOSize@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetIOSize(int a1)
{
	__asm
	{
		jmp p[52 * 4];
	}
}

// _BinkSetMemory@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetMemory(int a1, int a2)
{
	__asm
	{
		jmp p[53 * 4];
	}
}

// _BinkSetMixBinVolumes@20
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetMixBinVolumes(int a1, int a2, int a3, int a4, int a5)
{
	__asm
	{
		jmp p[54 * 4];
	}
}

// _BinkSetMixBins@16
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetMixBins(int a1, int a2, int a3, int a4)
{
	__asm
	{
		jmp p[55 * 4];
	}
}

// _BinkSetPan@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetPan(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[56 * 4];
	}
}

// _BinkSetSimulate@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSimulate(int a1)
{
	__asm
	{
		jmp p[57 * 4];
	}
}

// _BinkSetSoundOnOff@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSoundOnOff(int a1, int a2)
{
	__asm
	{
		jmp p[58 * 4];
	}
}

// _BinkSetSoundSystem@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSoundSystem(int a1, int a2)
{
	__asm
	{
		jmp p[59 * 4];
	}
}

// _BinkSetSoundTrack@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetSoundTrack(int a1, int a2)
{
	__asm
	{
		jmp p[60 * 4];
	}
}

// _BinkSetVideoOnOff@8
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetVideoOnOff(int a1, int a2)
{
	__asm
	{
		jmp p[61 * 4];
	}
}

// _BinkSetVolume@12
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkSetVolume(int a1, int a2, int a3)
{
	__asm
	{
		jmp p[62 * 4];
	}
}

// _BinkShouldSkip@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkShouldSkip(int a1)
{
	__asm
	{
		jmp p[63 * 4];
	}
}

// _BinkWait@4
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall BinkWait(int a1)
{
	__asm
	{
		jmp p[64 * 4];
	}
}

// _RADTimerRead@0
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall RADTimerRead()
{
	__asm
	{
		jmp p[65 * 4];
	}
}

// NEW

extern "C" __declspec(naked) void BinkSetFileOffset()
{
	__asm
	{
		jmp p[25 * 4];
	}
}

extern "C" __declspec(naked) void BinkOpenWithOptions()
{
	__asm
	{
		jmp p[33 * 4];
	}
}

extern "C" __declspec(naked) void BinkDoFramePlane()
{
	__asm
	{
		jmp p[36 * 4];
	}
}

extern "C" __declspec(naked) void BinkFreeGlobals()
{
	__asm
	{
		jmp p[42 * 4];
	}
}

extern "C" __declspec(naked) void BinkGetPlatformInfo()
{
	__asm
	{
		jmp p[44 * 4];
	}
}

extern "C" __declspec(naked) void BinkSetSpeakerVolumes()
{
	__asm
	{
		jmp p[52 * 4];
	}
}

extern "C" __declspec(naked) void BinkSetWillLoop()
{
	__asm
	{
		jmp p[63 * 4];
	}
}

extern "C" __declspec(naked) void BinkStartAsyncThread()
{
	__asm
	{
		jmp p[69 * 4];
	}
}

extern "C" __declspec(naked) void BinkRequestStopAsyncThread()
{
	__asm
	{
		jmp p[70 * 4];
	}
}

extern "C" __declspec(naked) void BinkWaitStopAsyncThread()
{
	__asm
	{
		jmp p[71 * 4];
	}
}

extern "C" __declspec(naked) void BinkDoFrameAsync()
{
	__asm
	{
		jmp p[72 * 4];
	}
}

extern "C" __declspec(naked) void BinkDoFrameAsyncWait()
{
	__asm
	{
		jmp p[73 * 4];
	}
}

extern "C" __declspec(naked) void BinkOpenXAudio2()
{
	__asm
	{
		jmp p[74 * 4];
	}
}
