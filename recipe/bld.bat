@echo on

cd %SRC_DIR%
set IPOPT_DIR=%LIBRARY_PREFIX%
set NP_INC=%SP_DIR%\numpy\core\include
set CC=cl
set FC=flang
set CC_LD=link
meson setup build --prefix=%PREFIX% -Dipopt_dir=%IPOPT_DIR% -Dincdir_numpy=%NP_INC% -Dpython_target=%PYTHON%
meson install -C build