cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.16.00'
  sha256 '1040965f7c583be2156ce3d76325b1e1435e50ea002a2ebf8072afad9145a74f'

  url "https://downloads.canon.com/bisg2018/drivers/mac/UFRII_v#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  container nested: "UFRII_v#{version}_Mac.dmg"

  pkg 'UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
