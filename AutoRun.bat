@rem 自动运行
set HTTP_PROXY=http://127.0.0.1:7890
set HTTPS_PROXY=http://127.0.0.1:7890
git pull
set HTTP_PROXY=
set HTTPS_PROXY=
start CloudflareSpeedTest.exe
git add .
git commit -m "update address."
set HTTP_PROXY=http://127.0.0.1:7890
set HTTPS_PROXY=http://127.0.0.1:7890
git push
