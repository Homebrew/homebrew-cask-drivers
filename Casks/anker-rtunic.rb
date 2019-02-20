cask 'anker-rtunic' do
  version '1.0.19,d2211byn0pk9fi:1533027920'
  sha256 '031b3f3b20d08b75438f258d5a46e07e29a719e634ff03d8d7ae0574e0afeffa'

  # d2211byn0pk9fi.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2211byn0pk9fi.cloudfront.net/spree/accessories/attachments/70581/RTUNICv#{version.before_comma}_disable_flowcontrol_1.zip?#{version.after_colon}"
  name 'Anker RTUNIC'
  homepage 'https://www.anker.com/store/aluminum-usb-3-0-to-ethernet-adapter/A7611011'

  depends_on macos: '<= :sierra'

  pkg "RTUNICv#{version.before_comma}.pkg"

  uninstall pkgutil: [
                       'com.realtek.usbeth.*',
                       'com.realtek.usbethcomposite.*',
                     ],
            kext:    [
                       'com.realtek.driver.AppleRTL815XComposite',
                       'com.realtek.driver.AppleRTL815XEthernet',
                     ],
            script:  [
                       executable: "#{staged_path}/uninstall/uninstall.command",
                       sudo:       true,
                     ],
            delete:  [
                       '/Library/Extensions/AppleRTL815X*.kext',
                       '/System/Library/Extensions/IONetworkingFamily.kext/Contents/PlugIns/AppleRTL815X*.kext',
                     ]

  caveats do
    reboot
  end
end
