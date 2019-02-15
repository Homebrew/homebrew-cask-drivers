cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.18.0'
  sha256 'd2d5ebab56c93239efb27bac5fc39a7d6b23b609adf7f7e06796147277312091'

  url "https://downloads.canon.com/bicg2019/drivers/mac/UFRII_v#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  container nested: "UFRII_v#{version}_Mac.dmg"

  pkg 'Office/UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
