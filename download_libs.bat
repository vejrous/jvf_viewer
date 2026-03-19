@echo off
echo JVF Viewer - Stahovani knihoven (Three.js r128)
echo ================================================
echo.

if not exist libs mkdir libs

echo Stahuji Three.js r128...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js', 'libs\three.min.js')"
if exist libs\three.min.js (echo   OK: libs\three.min.js) else (echo   CHYBA: three.min.js)

echo Stahuji OrbitControls r128...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/controls/OrbitControls.js', 'libs\OrbitControls.js')"
if exist libs\OrbitControls.js (echo   OK: libs\OrbitControls.js) else (echo   CHYBA: OrbitControls.js)

echo Stahuji CSS2DRenderer r128...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/renderers/CSS2DRenderer.js', 'libs\CSS2DRenderer.js')"
if exist libs\CSS2DRenderer.js (echo   OK: libs\CSS2DRenderer.js) else (echo   CHYBA: CSS2DRenderer.js)

echo.
echo Hotovo! Zkontrolujte slozku libs\
pause
