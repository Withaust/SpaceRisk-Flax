@echo off

cd FlaxEngine
START /wait "Generating project files..." CMD /c GenerateProjectFiles.bat
cd ..

timeout 2
echo [92m===========================================[0m
echo [92mGenerated project files successfully[0m
echo [92m===========================================[0m
timeout 2

SpaceVS\MSBuild\Current\Bin\MSBuild ^
FlaxEngine\Cache\Projects\Flax.vcxproj ^
-t:Build /p:Configuration="Editor.Windows.Development" /p:Platform=x64

timeout 2
echo [92m===========================================[0m
echo [92mBuilt Flax successfully[0m
echo [92m===========================================[0m
timeout 2

cd SpaceRiskGame

..\FlaxEngine\Binaries\Tools\Flax.Build.exe -log -logfile= -build -mutex ^
-buildtargets=GameTarget -skiptargets=FlaxEditor -platform=Windows -arch=x64 -configuration=Development

timeout 2
echo [92m===========================================[0m
echo [92mBuilt GameTarget successfully[0m
echo [92m===========================================[0m
timeout 2

..\FlaxEngine\Binaries\Tools\Flax.Build.exe -log -logfile= -build -mutex ^
-buildtargets=GameEditorTarget -skiptargets=FlaxEditor -platform=Windows -arch=x64 -configuration=Development

timeout 2
echo [92m===========================================[0m
echo [92mBuilt GameEditorTarget successfully[0m
echo [92m===========================================[0m
timeout 2

msg %username% Successfully built everything!