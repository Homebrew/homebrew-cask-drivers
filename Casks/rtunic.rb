cask 'rtunic' do
  version '1.0.16'
  sha256 '51e1c1790789fcb35ca80c2cc5aa08826d2f24252e20a832124dafb38d85cf4e'

  # Verified manufacturer download page: http://www.realtek.com.tw/Downloads/downloadsView.aspx?Langid=1&PNid=13&PFid=56&Level=5&Conn=4&DownTypeID=3&GetDown=false
  url "http://12244.wpc.azureedge.net/8012244/drivers/rtdrivers/cn/nic/0010-RTUNICv#{version}.zip"
  name 'rtunic'
  homepage 'https://www.anker.com/products/taxons/114/Connectivity'

  pkg "RTUNICv#{version}/RTUNICv#{version}.pkg"

  uninstall pkgutil: [
                       'com.realtek.usbeth109',
                       'com.realtek.usbethcomposite109',
                     ],
            kext:    [
                       'com.realtek.driver.AppleRTL815XComposite',
                       'com.realtek.driver.AppleRTL815XEthernet',
                     ]

  caveats do
    reboot
  end
end
