@echo off

set CommonCompilerFlags=-O2 -nologo -fp:fast -fp:except- -Gm- -GR- -EHa- -Zo -Oi -WX -W4 -wd4201 -wd4100 -wd4189 -wd4505 -wd4127 -FC -Z7 -GS- -Gs9999999
set CommonLinkerFlags=-incremental:no -opt:ref
set IonCompiler=C:\Users\hviala\dev\bitwise\ion\ion.exe

pushd ..
%IonCompiler% -o build\generated.c -os win32 -arch x64 code
popd
pushd ..\build
cl %CommonCompilerFlags% -Feukabu.exe generated.c /link %CommonLinkerFlags%
del generated.c
popd
