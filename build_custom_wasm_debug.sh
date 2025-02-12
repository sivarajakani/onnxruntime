# In windows, use 'build' to replace './build.sh'
# It's recommended to use '--skip_tests` in Release & Debug + 'debug info' configruations - please review FAQ for more details

cd ./cmake/external/emsdk/

./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh

cd ../../..

# The following command build release.
./build.sh --clean --config Debug 

./build.sh --config Debug --build_wasm --skip_tests --minimal_build \
 --disable_exceptions --disable_rtti --disable_ml_ops \
 --include_ops_by_config required_operators_and_types.config --enable_reduced_operator_type_support
 