@ECHO OFF

IF [%1]==[test] (
    IF not exist spells\template mkdir spells\template
    COPY template.dll spells\template

    chaos test.kaos
    IF errorlevel 1 (
        EXIT /B 1
    )
    EXIT /B 0
)

gcc -shared -fPIC template.c -o template.o
gcc -c template.c
gcc -shared -o template.dll template.o -Wl,--out-implib,libtemplate.a
EXIT /B 0