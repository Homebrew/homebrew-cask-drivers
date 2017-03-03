cask 'canon-pixma-scanner-driver-ica' do
  version '4.0.0'
  sha256 '0ea9a9a92ab90f60b0929803f7dc4b617d5225432c9316582b063178267d34cb'

  # gdlp01.c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/7/0100006587/01/misd-mac-ijscanner1-#{version.dots_to_underscores}-ea19_2.dmg"
  name 'Canon PIXMA ICA Scanner Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/printers/support-inkjet-printer/mg-series/pixma-mg6220'

  pkg "Canon IJScanner1_#{format('%02d' * 3, version.major, version.minor, version.patch)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner1.#{format('%02d' * 3, version.major, version.minor, version.patch)}"
end
