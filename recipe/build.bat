cmake %CMAKE_ARGS% -G Ninja -LAH -DCMAKE_BUILD_TYPE=Release -B tmp-build .
if errorlevel 1 exit 1

cmake --build tmp-build --parallel %CPU_COUNT%
if errorlevel 1 exit 1

%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
