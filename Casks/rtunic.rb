cask 'rtunic' do
  version '1.0.16,484.0008'
  sha256 '51e1c1790789fcb35ca80c2cc5aa08826d2f24252e20a832124dafb38d85cf4e'

  # d2c6jjk3vnoatm.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2c6jjk3vnoatm.cloudfront.net/spree/products/accessoies/#{version.after_comma.dots_to_slashes}-RTUNICv#{version.before_comma}.zip"
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
