latex %1
if errorlevel 1 goto 1
bibtex %1
if errorlevel 1 goto 1
latex %1
latex %1
:1

