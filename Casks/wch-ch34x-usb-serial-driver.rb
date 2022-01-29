cask "wch-ch34x-usb-serial-driver" do
  version "1.7"
  sha256 :no_check

  url "http://www.wch.cn/downloads/file/369.html"
  name "WCH USB serial driver for CH340/CH341/CH342/CH343/CH344/CH9101/CH9102/CH9103/CH9143"
  homepage "http://www.wch.cn/download/CH34XSER_MAC_ZIP.html"

  pkg "CH34XSER_MAC/CH34xVCPDriver.pkg"

  if MacOS.version <= :catalina
    uninstall pkgutil: "cn.wch.pkg.CH34xVCPDriver",
              kext:    ["cn.wch.CH34xVCPDriver", "cn.wch.CH34xVCPControlDriver"]
  else
    uninstall pkgutil: "cn.wch.pkg.CH34xVCPDriver"
  end

  caveats do
    reboot
  end
end
