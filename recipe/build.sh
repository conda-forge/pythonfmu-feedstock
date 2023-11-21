cmake -S pythonfmu/pythonfmu-export -B tmp-build -DPython3_EXECUTABLE:FILEPATH=$PYTHON -DCMAKE_BUILD_TYPE=Release
cmake --build tmp-build --parallel ${CPU_COUNT}

$PYTHON -m pip install . -vv
