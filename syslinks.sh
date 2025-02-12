#!/bin/bash
menu () {
    echo "1. 安装 debian 10
    2. 安装debian 11
    3. 自定义镜像模式"
    }
url='bash <(curl -s https://github.com/veip007/dd/raw/refs/heads/master/InstallNET.sh)'
slct () {
case $nm in
    1)
    $url -d 10 -p cnddyjj -console ttyS0        
    ;;
    2)
    $url -d 11 -p cnddyjj -console ttyS0
    ;;
    3)
    read -p '输入镜像链接直连地址：' url2
    $url -dd $url2
    ;;
esac
}
menu
read -p '请输入数字：' nm
slct