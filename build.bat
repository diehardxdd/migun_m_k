set PATH="C:\CMake\bin\";%PATH%
call "%VS140COMNTOOLS%..\..\VC\vcvarsall.bat" x64

pushd build.win64.vc2012
call cmake.exe -G"Visual Studio 14 Win64" -DOpenCV_DIR="C:/Sem/opencv/build" ..
msbuild migun_m_k.sln /property:Configuration=Debug /m
popd