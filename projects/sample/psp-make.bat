rem Change working directory to where this batch file is stored
cd %~dp0

rem Create container, run make
docker run --name pspdev -v %cd%:/build pspdev-docker make

rem Delete the container
docker rm pspdev

rem Move EBOOT.PBP to the game folder
copy EBOOT.pbp game\EBOOT.pbp