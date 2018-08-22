pushd "../"

IONFOLDER="/home/hugo/dev/bitwise/ion"
$IONFOLDER/ion -o build/generated.c -os linux -arch x64 code
popd

clang ../build/generated.c -o ../build/ukabu
rm ../build/generated.c
