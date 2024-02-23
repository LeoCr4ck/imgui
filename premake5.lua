project "ImGui"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "on"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/Engine/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/Engine/%{prj.name}")

	files
	{
		"imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
		"imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
	}

    filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
