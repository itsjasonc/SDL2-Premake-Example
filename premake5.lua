include "./vendor/premake/premake_customization/solution_items.lua"

workspace "SDL2-Premake-Example"
	architecture "x86_64"
	startproject "SDL2-Premake-Example"

	configurations
	{
		"Debug",
		"Release"
	}

	solution_items
	{
		".editorconfig"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to root folder (solution directory)
IncludeDir = {}
IncludeDir["SDL2"] = "%{wks.location}/SDL2-Premake-Example/vendor/SDL2/include"
IncludeDir["Glad"] = "%{wks.location}/SDL2-Premake-Example/vendor/Glad/include"
IncludeDir["glm"] = "%{wks.location}/SDL2-Premake-Example/vendor/glm"

group "Dependencies"
	include "vendor/premake"
	include "SDL2-Premake-Example/vendor/SDL2/SDL2.lua"
	include "SDL2-Premake-Example/vendor/SDL2/SDL2main.lua"
	include "SDL2-Premake-Example/vendor/Glad"
group ""

include "SDL2-Premake-Example"
