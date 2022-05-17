@echo on

cd %SRC_DIR%
set IPOPT_DIR=%PREFIX%
set NP_INC=%SP_DIR%/numpy/core/include/
meson setup build --prefix=%PREFIX% -Dipopt_dir=%IPOPT_DIR% -Dincdir_numpy=%NP_INC% -Dpython_target=%PYTHON} %MESON_ARGS%
meson install -C build