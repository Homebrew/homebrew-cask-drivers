cask 'prolific-pl2303' do
  version '1.6.1_20171018,1.6.1_20160309'
  sha256 'c140b2f4d6f222b30986a618f670ad3257c2f6f01c0076f3f713fa786561c3ad'

  url "http://www.prolific.com.tw/UserFiles/files/PL2303_MacOSX_#{version.before_comma.dots_to_underscores}.zip"
  name 'Prolific USB to Serial Cable driver'
  homepage 'http://www.prolific.com.tw/US/'

  pkg "PL2303_MacOSX_#{version.after_comma}.pkg"

  uninstall kext:    'com.prolific.driver.PL2303',
            pkgutil: [
                       'com.Susteen.driver.PL2303',
                       'com.prolific.driver.PL2303',
                     ],
            delete:  [
                       '/Library/Extensions/ProlificUsbSerial.kext',
                       '/var/db/receipts/*PL2303*.*',
                       '/var/db/receipts/*ProlificUSbSerial*.*',
                     ]
end
