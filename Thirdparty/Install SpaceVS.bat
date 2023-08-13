SpaceVS.exe --installPath %CD%\..\SpaceVS ^
--add Microsoft.VisualStudio.Workload.ManagedDesktop ^
--add Microsoft.VisualStudio.Workload.NativeDesktop ^
--includeRecommended --passive --norestart --wait --force --nickname SpaceVS

msg %username% Installed SpaceVS!
