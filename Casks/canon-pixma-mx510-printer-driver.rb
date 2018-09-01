cask 'canon-pixma-mx510-printer-driver' do
  version '16.20.0.0'
  sha256 'afe85f409fb6b3ce88894fb72b72df8374fbb51bf8a4d4ff8d619788a9badbcd'

  # gdlp01.c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/5/0100005695/05/mcpd-mac-mx510-#{version.dots_to_underscores}-ea21_3.dmg"
  name 'Canon PIXMA MX510 series CUPS Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/printers/support-inkjet-printer/mx-series/pixma-mx510'

  pkg "PrinterDriver_MX510 series_#{version.no_dots}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.MX510-#{version.no_dots}",
            delete:  '/Library/Printers/PPDs/Contents/Resources/CanonIJMX510series.ppd.gz'
end
