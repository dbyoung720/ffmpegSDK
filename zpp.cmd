@echo off

cd /d %~dp0
rem SDL_app 播放窗体类名
rem 2025-04-03\x64\bin\ffplay -hide_banner -fs -hwaccel vulkan F:\VIDEO\Film\Film\x265.mp4
rem 2025-04-03\x64\bin\ffplay -hide_banner -window_title "dxva2 play" -x 800 -y 600 -hwaccel vulkan F:\VIDEO\Film\Film\x265.mp4
2025-04-03\x64\bin\ffplay -hide_banner -window_title "dxva2 play" -fs -hwaccel vulkan F:\VIDEO\Film\Film\x265.mp4
rem 2025-04-03\x64\bin\ffplay -hide_banner -window_title "dxva2 play" -fs -hwaccel d3d11va F:\VIDEO\Film\Film\x265.mp4
rem 2025-04-03\x64\bin\ffplay -hide_banner -window_title "dxva2 play" -fs -hwaccel cuda F:\VIDEO\Film\Film\x265.mp4

rem 2025-04-03\x64\bin\ffplay -rtsp_transport tcp -x 800 -y 600 -fflags nobuffer -analyzeduration 1000000 -probesize 1000000 rtsp://admin:@192.168.110.40/Streaming/Channels/101
rem 2025-04-03\x64\bin\ffplay -rtsp_transport tcp -x 800 -y 600 -analyzeduration 1000000 -probesize 1000000 -tune zerolatency -preset ultrafast rtsp://admin:@192.168.110.40/Streaming/Channels/101
 
pause
