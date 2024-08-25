@echo off

for %%G in (Community,Professional,Enterprise) do (
  if exist "C:\Program Files (x86)\Microsoft Visual Studio\2022\%%G" (
    set "VSInstallPath=C:\Program Files (x86)\Microsoft Visual Studio\2022\%%G"
  )
  if exist "C:\Program Files\Microsoft Visual Studio\2022\%%G" (
    set "VSInstallPath=C:\Program Files\Microsoft Visual Studio\2022\%%G"
  )
)
if "%VSInstallPath%" == "" (
  echo "Visual Studio 2022 not found"
  pause
  exit 1
)

call "%VSInstallPath%\VC\Auxiliary\Build\vcvars64.bat"

cd..
cd bin

lib /def:"..\lib\avcodec-61.def"   /machine:amd64 /out:"..\lib\avcodec-61.lib"
lib /def:"..\lib\avdevice-61.def"  /machine:amd64 /out:"..\lib\avdevice-61.lib"
lib /def:"..\lib\avformat-61.def"  /machine:amd64 /out:"..\lib\avformat-61.lib"
lib /def:"..\lib\avutil-59.def"    /machine:amd64 /out:"..\lib\avutil-59.lib"
lib /def:"..\lib\avfilter-10.def"   /machine:amd64 /out:"..\lib\avfilter-10.lib"
lib /def:"..\lib\postproc-58.def"  /machine:amd64 /out:"..\lib\postproc-58.lib"
lib /def:"..\lib\swresample-5.def" /machine:amd64 /out:"..\lib\swresample-5.lib"
lib /def:"..\lib\swscale-8.def "   /machine:amd64 /out:"..\lib\swscale-8.lib"
