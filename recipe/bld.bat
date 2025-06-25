set OPENSSL_DIR=%LIBRARY_PREFIX%

REM Create temp folder
mkdir tmpbuild_%PY_VER%
set TEMP=%CD%\tmpbuild_%PY_VER%

REM install the package
cd python
%PYTHON% -m pip install . -vv

REM Bundle all downstream library licenses
cargo-bundle-licenses ^
    --format yaml ^
    --output %SRC_DIR%\THIRDPARTY.yml ^
    || goto :error