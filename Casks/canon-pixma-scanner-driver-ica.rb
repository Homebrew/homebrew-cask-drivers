cask 'canon-pixma-scanner-driver-ica' do
  version '4.3.4a'
  sha256 '3433cd6dbdc3e4bb84c4c6bacadc6bb2c8630fc83e3fc49ce1dbd84c91b5765c'

  # gdlp01.c-wss.com/gds was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/5/0100007645/04/misd-mac-ijscanner16f-#{version.dots_to_underscores.delete('^0-9_')}-ea21_3.dmg"
  name 'Canon PIXMA ICA Scanner Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/printers/support-inkjet-printer/mg-series/pixma-mg6220'

  pkg "Canon IJScanner16f_#{format('%<major>02d%<minor>02d%<patch>02d', major: version.major, minor: version.minor, patch: version.patch)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner16f.#{format('%<major>02d%<minor>02d%<patch>02d', major: version.major, minor: version.minor, patch: version.patch)}"
end
