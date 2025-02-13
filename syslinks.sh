#!/bin/bash
menu () {
    echo "1. 安装 debian 12
    2. 安装debian 11
    3. 自定义镜像模式"
    }
url='bash <(curl -s https://github.com/leitbogioro/Tools/raw/refs/heads/master/Linux_reinstall/InstallNET.sh)'
slct () {
case $nm in
    1)
    $url -debian 12 -pwd cnddyjj -console ttyS0        
    ;;
    2)
    $url -debian 11 -pwd cnddyjj -console ttyS0
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