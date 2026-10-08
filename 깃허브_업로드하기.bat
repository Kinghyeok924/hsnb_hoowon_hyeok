@echo off
chcp 65001 > nul
echo ========================================================
echo 화성시남부노인복지관 후원물품 관리대장 GitHub 업로드
echo ========================================================
echo.
echo [원격 저장소] https://github.com/Kinghyeok924/hsnb_hoowon_hyeok.git
echo [대상 브랜치] main
echo.
echo GitHub으로 업로드(git push)를 진행합니다...
echo ※ 브라우저 로그인 창(GitHub 인증)이 뜨면 로그인을 진행해주세요.
echo.

"C:\Program Files\Git\cmd\git.exe" -C "%~dp0." push -u origin main

echo.
if %ERRORLEVEL% equ 0 (
    echo ========================================================
    echo [완료] GitHub에 성공적으로 업로드되었습니다!
    echo ========================================================
) else (
    echo ========================================================
    echo [안내] 업로드 중 문제가 발생했습니다.
    echo 1. GitHub에 'hsnb_hoowon_hyeok' 저장소가 생성되어 있는지 확인해주세요.
    echo 2. 로그인 권한(계정)을 확인해주세요.
    echo ========================================================
)
echo.
pause
