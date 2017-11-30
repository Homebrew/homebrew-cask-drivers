cask 'canon-pixma-mg6200-printer-driver' do
  version '16.20.0.0'
  sha256 '2f45d1884892762238f389b635b4f76906baed4deb5277b4e14f22420d4f6ea4'

  # gdlp01.c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/5/0100005655/05/mcpd-mac-mg6200-#{version.dots_to_underscores}-ea21_3.dmg"
  name 'Canon PIXMA MG6200 series CUPS Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/printers/support-inkjet-printer/mg-series/pixma-mg6220'

  pkg "PrinterDriver_MG6200 series_#{version.no_dots}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.MG6200-#{version.no_dots}",
            delete:  '/Library/Printers/PPDs/Contents/Resources/CanonIJMG6200series.ppd.gz'
end
