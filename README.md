高通骁龙410云编译immortalwrt


菜鸟禁止开启ssh调试！不主动退出浪费资源！！！






资源 性能有限，请勿添加过多软件包！！！ 超6小时将自动断开

固件主要添加超多 无线网卡驱动为目的!

目前开启usb网络共享驱动

kmod-usb-net-cdc-ether

kmod-usb-net-cdc-mbim

kmod-usb-net-cdc-ncm

kmod-usb-net-huawei-cdc-ncm

kmod-usb-net-ipheth

kmod-usb-net-rndis

目前开启的Realtek系列网卡


kmod-rtw88-8821cu和rtl8811cu通用


kmod-rtw88-8822cu和rtl8812cu通用

目前开启的aic系列网卡

kmod-aic8800-usb

需要其他插件自行通过config文件内对应配置添加，注意同时开启对应依赖选项

aic系列usb网卡从储存模式切换到WIFI模式命令！

lsusb查看

Bus 001 Device 014: ID a69c:5721 aicsemi Aic MSC

把aic.json配置放到etc目录去

ttyd终端执行命令 usbmode -s -c /etc/aic.json

Bus 001 Device 015: ID 3625:0110 AICSemi AIC8800DC

![RTL8812CU网卡](https://qqbot.ugcimg.cn/1106413613/28efddef1be940bee43f05f27758994db2be56c8/916b254e6bf0605a98dadfce2eb6e89b)

![8812CU接线焊接图](https://raw.githubusercontent.com/xuxin1955/Actions-OpenWrt/main/pics/IMG_20260131_183658.jpg)


8812CU和8811CU都能完美驱动


![RTL8811CU网卡](https://raw.githubusercontent.com/xuxin1955/Actions-OpenWrt/main/pics/mmexport1769855276375.jpg)

![410插8811CU网卡](https://raw.githubusercontent.com/xuxin1955/Actions-OpenWrt/main/pics/GIF_20260131_184804.gif)

7628N模块
![7628N模块](https://raw.githubusercontent.com/xuxin1955/Actions-immortalwrt/main/pics/GIF_20260417_073543.gif)

7628N刷机命令 自己按照自己固件名字对应修正！！！


ssh推送刷机命令参考！！！

保配置刷机命令 cat immortalwrt-ramips-mt76x8-hilink_hlk-7628n-squashfs-sysupgrade.bin | ssh root@192.168.1.1 "cat > /tmp/fw.bin && sysupgrade /tmp/fw.bin"


不保配置刷机命令 cat immortalwrt-ramips-mt76x8-hilink_hlk-7628n-squashfs-sysupgrade.bin | ssh root@192.168.1.1 "cat > /tmp/fw.bin && sysupgrade -n /tmp/fw.bin"


![7628N模块](https://raw.githubusercontent.com/xuxin1955/Actions-immortalwrt/main/pics/Screenshot_2026-04-21-00-24-09-14_9e8df3d0c7c1f50248b6ee043a653d26.jpg)


命令推送刷机后，保持模块供电稳定切勿断电，等模块灯闪后即可！！！



**RYLink-7628N Datasheet v2.0手册**  
👉 [点击查看 PDF](https://github.com/xuxin1955/Actions-immortalwrt/blob/main/pics/RYLink-7628N%20datasheet%20v2.0.pdf)  
> 若页面加载异常或提示错误，请刷新页面即可正常预览。


## Credits

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [Mattraks/delete-workflow-runs](https://github.com/Mattraks/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)

