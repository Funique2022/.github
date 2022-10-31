@echo off
rmdir api /s /q
rmdir _api /s /q
rmdir obj /s /q

set DEV_PREFIX=c:%HOMEPATH%\Documents\project_unity_development

docfx metadata %DEV_PREFIX%\Funique.Cinema.csproj  %DEV_PREFIX%\Funique.Client.csproj %DEV_PREFIX%\Funique.Core.csproj %DEV_PREFIX%\Funique.Designer.csproj %DEV_PREFIX%\Funique.Media.csproj %DEV_PREFIX%\Funique.Network.csproj %DEV_PREFIX%\Funique.Player.csproj %DEV_PREFIX%\Funique.Setting.csproj %DEV_PREFIX%\Funique.Streaming.csproj %DEV_PREFIX%\Funique.UI.csproj %DEV_PREFIX%\Funique.Verify.csproj %DEV_PREFIX%\Funique.Video.csproj --filter filter.yml
ren _api api
docfx build
pause