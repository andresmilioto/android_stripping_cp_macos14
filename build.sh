echo "NDK_ROOT: ${NDK_ROOT}"

BUILD_TYPE="RELEASE"
ANDROID_ABI='"armeabi-v7a"'
ANDROID_TOOLCHAIN_FILE="${NDK_ROOT}/build/cmake/android.toolchain.cmake"
ANDROID_STL="c++_static"
ANDROID_NDK="${NDK_ROOT}"
ANDROID_TOOLCHAIN="clang"

export OpenCV_DIR=${SCRIPT_DIR}/opencv-arm/sdk/native/jni
export CXXFLAGS="-frtti -fexceptions"

params=(-DCMAKE_BUILD_TYPE=${BUILD_TYPE})
params+=(-DCMAKE_TOOLCHAIN_FILE=${ANDROID_TOOLCHAIN_FILE})
params+=(-DANDROID_NATIVE_API_LEVEL=24)
params+=(-DANDROID_STL=${ANDROID_STL})
params+=(-DANDROID_TOOLCHAIN=${ANDROID_TOOLCHAIN})
params+=(-DANDROID_CPP_FEATURES="rtti exceptions")
params+=(-DANDROID_ARM_NEON=TRUE)
params+=($@)

# send it
mkdir -p build
cd build
cmake .. "${params[@]}"
make

