@rem 自动运行
set HTTP_PROXY=http://127.0.0.1:7890
set HTTPS_PROXY=http://127.0.0.1:7890
git pull
set HTTP_PROXY=
set HTTPS_PROXY=
call CloudflareSpeedTest.exe -allip -n 500 -tll 40 -tl 1000 -tlr 0.25
git add .
git commit -m "update address."
set HTTP_PROXY=http://127.0.0.1:7890
set HTTPS_PROXY=http://127.0.0.1:7890
git push
