project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	systemversion "latest"

	targetdir ("%{wks.location}" .. "/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}" .. "/build/" .. outputdir .. "/%{prj.name}")

	files
	{
		"*.h",
		"*.cpp",
		"backends/imgui_impl_opengl3.*",
		"backends/imgui_impl_glfw.*"
	}
	includedirs
	{
		"./"
	}

	filter "system:linux"
		pic "On"

	filter "configurations:Debug"
		symbols "On"

	filter "configurations:Release"
		optimize "On"	
