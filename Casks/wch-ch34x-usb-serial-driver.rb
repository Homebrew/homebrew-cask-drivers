cask "wch-ch34x-usb-serial-driver" do
  version "1.5"
  sha256 "e2a1dcf60c5ce54abcc8cb7ccc202f258902b7ed73488a43916afb7c01a2a25a"

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
