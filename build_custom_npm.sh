cd js/ && npm ci

cd ./common && npm ci
cd ../web && npm ci

# Pull all WASM artifacts from ORT
npm run pull:wasm

mkdir dist

cp ../../build/Linux/Release/ort-wasm-simd-threaded.mjs dist/
cp ../../build/Linux/Release/ort-wasm-simd-threaded.wasm dist/

npm run build

mkdir build

cp dist build/
cp README.md build/
cp package.json build/
cp types.d.ts build/
