@echo off
rmdir api /s /q
rmdir _api /s /q
rmdir obj /s /q

set SERVER_PREFIX=c:%HOMEPATH%\Documents\funique_master_server\project_master_server
set CLIENT_PREFIX=c:%HOMEPATH%\Documents\DaVinci_2022

docfx metadata %SERVER_PREFIX%\Funique.csproj %SERVER_PREFIX%\Funique.Cinema.csproj %CLIENT_PREFIX%\Funique.Core.csproj %SERVER_PREFIX%\Funique.Editor.csproj %SERVER_PREFIX%\Funique.Media.csproj %SERVER_PREFIX%\Funique.Player.csproj %SERVER_PREFIX%\Funique.Network.csproj %SERVER_PREFIX%\Funique.Setting.csproj %SERVER_PREFIX%\Funique.Streaming.csproj %SERVER_PREFIX%\Funique.UI.csproj %CLIENT_PREFIX%\Funique.Client.csproj %CLIENT_PREFIX%\Funique.Dissonance.csproj %SERVER_PREFIX%\Funique.Video.csproj --filter filter.yml
ren _api api
docfx build
pause