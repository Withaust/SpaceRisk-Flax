@echo off

rmdir /s /q "FlaxEngine/Binaries"
rmdir /s /q "FlaxEngine/Cache"
rmdir /s /q "FlaxEngine/Logs"
rmdir /s /q "FlaxEngine/.vs"
rmdir /s /q "FlaxEngine/.vscode"

timeout 3
echo [92m===========================================[0m
echo [92mCleared Flax successfully[0m
echo [92m===========================================[0m
timeout 2

rmdir /s /q "SpaceRiskGame/Binaries"
rmdir /s /q "SpaceRiskGame/Cache"
rmdir /s /q "SpaceRiskGame/Logs"
rmdir /s /q "SpaceRiskGame/.vs"
rmdir /s /q "SpaceRiskGame/.vscode"

timeout 3
echo [92m===========================================[0m
echo [92mCleared SpaceRisk successfully[0m
echo [92m===========================================[0m
timeout 2

rmdir /s /q "SteamWorks/Binaries"
rmdir /s /q "SteamWorks/Cache"
rmdir /s /q "SteamWorks/Content"
rmdir /s /q "SteamWorks/Logs"
rmdir /s /q "SteamWorks/.vs"
rmdir /s /q "SteamWorks/.vscode"

timeout 3
echo [92m===========================================[0m
echo [92mCleared SteamWorks successfully[0m
echo [92m===========================================[0m
timeout 2

rmdir /s /q "GameAnalytics/Binaries"
rmdir /s /q "GameAnalytics/Cache"
rmdir /s /q "GameAnalytics/Content"
rmdir /s /q "GameAnalytics/Logs"
rmdir /s /q "GameAnalytics/.vs"
rmdir /s /q "GameAnalytics/.vscode"

timeout 3
echo [92m===========================================[0m
echo [92mCleared GameAnalytics successfully[0m
echo [92m===========================================[0m
timeout 2

rmdir /s /q "RmlUi/Binaries"
rmdir /s /q "RmlUi/Cache"
rmdir /s /q "RmlUi/Content"
rmdir /s /q "RmlUi/Logs"
rmdir /s /q "RmlUi/.vs"
rmdir /s /q "RmlUi/.vscode"

timeout 3
echo [92m===========================================[0m
echo [92mCleared RmlUi successfully[0m
echo [92m===========================================[0m
timeout 2

msg %username% Successfully cleared everything!