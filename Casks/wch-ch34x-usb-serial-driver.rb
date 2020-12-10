cask "wch-ch34x-usb-serial-driver" do
  version "1.5"
  sha256 :no_check

  url "http://www.wch.cn/downloads/file/178.html"
  name "WCH USB serial driver for CH340/CH341"
  homepage "http://www.wch.cn/download/CH341SER_MAC_ZIP.html"

  pkg "CH341SER_MAC/CH34x_Install_V#{version}.pkg"

  uninstall pkgutil: "com.wch.ch34xinstall.mykextdir.pkg",
            kext:    "com.wch.usbserial"

  caveats do
    reboot
  end
end
