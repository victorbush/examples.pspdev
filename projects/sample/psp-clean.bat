rem Change working directory to where this batch file is stored
cd %~dp0

rem Create container, run make clean
docker run --name pspdev -v %cd%:/build pspdev-docker make clean

rem Delete the container
docker rm pspdev

rem Delete EBOOT.pbp
del EBOOT.pbp