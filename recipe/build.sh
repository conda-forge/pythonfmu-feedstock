cmake ${CMAKE_ARGS} -G Ninja -LAH -DCMAKE_BUILD_TYPE=Release -B tmp-build .
cmake --build tmp-build --parallel ${CPU_COUNT}

$PYTHON -m pip install . -vv
