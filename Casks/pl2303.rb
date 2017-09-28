cask 'pl2303' do
  version '1.6.1_20170620'
  sha256 '75ae5fa00c3862cfe7228a16dde06fb234a1e0b588bf7c4e29edde591a595a68'

  # prolific.com.tw was verified as official when first introduced to the cask
  url "http://www.prolific.com.tw/UserFiles/files/PL2303_MacOSX_#{version.dots_to_underscores}.zip"
  name 'Prolific USB-Serial Cable driver'
  homepage 'http://prolificusa.com/'

  pkg "PL2303_MacOSX_#{version}.pkg"

  uninstall pkgutil: "com.prolific.prolificUsbserialCableDriverV#{version.dots_to_underscores}.ProlificUsbSerial.pkg",
            kext:    'com.prolific.driver.PL2303',
            delete:  [
                       '/Library/Extensions/ProlificUsbSerial.kext',
                       '/var/db/receipts/*PL2303*.*',
                       '/var/db/receipts/*ProlificUSbSerial*.*',
                     ]
end
