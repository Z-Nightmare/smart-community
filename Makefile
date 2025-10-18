BUILD_TIME      := $(shell LC_TIME=zh_CN.UTF-8 date +"%Y-%m-%d %H:%M:%S %A")
#BUILD_TIME            := $(shell date +%Y-%m-%dT%H:%M:%S%z 2>/dev/null || powershell -Command "Get-Date -Format o")
AUTHOR          := Your Name  # ← 在此处替换为你的名字或签名


auto_commit:
	git add .
	git commit -am "$(BUILD_TIME) —by $(AUTHOR)"
	git pull
	git push