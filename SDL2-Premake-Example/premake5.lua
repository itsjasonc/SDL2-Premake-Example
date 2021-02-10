project "SDL2-Premake-Example"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",

		"vendor/glm/glm/**.hpp",
		"vendor/glm/glm/**.inl",
    }

    includedirs
    {
		"%{IncludeDir.SDL2}",
    }

    links
    {
        "SDL2",
        "Glad",
        "opengl32.lib"
    }
    
    flags { "NoPCH" }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        defines "CH_DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "CH_RELEASE"
        runtime "Release"
        optimize "on"
    
    filter "configurations:Production"
        defines "CH_PRODUCTION"
        runtime "Release"
        optimize "on"