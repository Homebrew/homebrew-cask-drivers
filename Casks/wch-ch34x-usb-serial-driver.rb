cask 'wch-ch34x-usb-serial-driver' do
  version '1.4'
  sha256 'b190f612b833727b2006f362a835f7e97177b580e45cef253e164202106c48eb'

  url 'http://www.wch.cn/downfile/178'
  name 'WCH USB serial driver for CH340/CH341'
  homepage 'http://http://www.wch.cn/'

  pkg "CH341SER_MAC/CH34x_Install_V#{version}.pkg"

  uninstall pkgutil: 'com.wch.usbserial.pkg',
            kext:    'com.wch.usbserial'
end
