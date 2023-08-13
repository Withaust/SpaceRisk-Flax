SpaceBuild.exe --installPath %CD%\..\SpaceBuild ^
--add Microsoft.VisualStudio.Workload.ManagedDesktop ^
--add Microsoft.VisualStudio.Workload.NativeDesktop ^
--includeRecommended --passive --norestart --wait --force --nickname SpaceBuild

msg %username% Installed SpaceBuild!
