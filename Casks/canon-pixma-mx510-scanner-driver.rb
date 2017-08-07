cask 'canon-pixma-mx510-scanner-driver' do
  version '18.1.0b'
  sha256 '5f4ac9ca567e85815a6392e43824250ed3e8b255068bd6634c693d7baec3a011'

  # gdlp01.c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/2/0100004072/03/msd_-mac-mx510-#{version.dots_to_underscores}-ea11.dmg"
  name 'Canon PIXMA MX510 series TWAIN Scanner Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/printers/support-inkjet-printer/mx-series/pixma-mx510'

  pkg "ScanGear_MX510 series_#{version.major}#{format('%02d', version.minor)}00.pkg", allow_untrusted: true

  uninstall pkgutil: "jp.co.canon.mpkg.scangear.mx510series.-#{version.no_dots}",
end
