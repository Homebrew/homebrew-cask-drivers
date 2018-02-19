cask 'prolific-pl2303' do
  url_base = 'http://www.prolific.com.tw/UserFiles/files/PL2303_MacOSX'

  if MacOS.version <= :mountain_lion
    version '1.5.1_20160309'
    sha256 'b61561766d1bc1edd520a671a6dbe06fe81016eca0db76d37eeda2f481f53798'
    url "#{url_base}_v#{version.dots_to_underscores}.zip"
    pkg "PL2303_MacOSX_v#{version}.pkg"
  else
    version '1.6.1_20170620'
    sha256 '75ae5fa00c3862cfe7228a16dde06fb234a1e0b588bf7c4e29edde591a595a68'
    url "#{url_base}_#{version.dots_to_underscores}.zip"
    pkg 'PL2303_MacOSX_1.6.1_20160309.pkg' # For some reason the package version does not match the version in the URL
  end

  name 'Prolific USB to Serial Cable driver'
  homepage 'http://www.prolific.com.tw/US/'

  uninstall pkgutil: [
                       'com.Susteen.driver.PL2303',
                       'com.prolific.driver.PL2303',
                     ],
            kext:    'com.prolific.driver.PL2303',
            delete:  [
                       '/Library/Extensions/ProlificUsbSerial.kext',
                       '/var/db/receipts/*PL2303*.*',
                       '/var/db/receipts/*ProlificUSbSerial*.*',
                     ]

  caveats do
    kext
  end
end
