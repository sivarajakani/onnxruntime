# In windows, use 'build' to replace './build.sh'
# It's recommended to use '--skip_tests` in Release & Debug + 'debug info' configruations - please review FAQ for more details

cd ./cmake/external/emsdk/

./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh

cd ../../..

# --config:
# The MinSizeRel configuration will produce the smallest binary size.
# The Release configuration can also be used if you wish to prioritize performance over binary size.

./build.sh --clean --config Release

# The following command build release.
./build.sh --config Release --build_wasm --minimal_build --skip_tests \
 --disable_exceptions --disable_rtti --disable_ml_ops \
 --include_ops_by_config required_operators_and_types.config --enable_reduced_operator_type_support
