cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.17.0'
  sha256 'cbd0a52ba8b1c0faf42225662933566ea0a4c3504686b60f7e0e7912789d93c7'

  url "https://downloads.canon.com/bisg2018/drivers/mac/UFRII_v#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  container nested: "UFRII_v#{version}_Mac.dmg"

  pkg 'Office/UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
