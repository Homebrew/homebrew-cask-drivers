cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.13.01'
  sha256 '7555870c9cf769cce49267b8cdd2e63fcec1e8a409ccbfeb3d12c7e3e67f211b'

  url "https://downloads.canon.com/bisg2017/drivers/mac/UFRII_v#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English',
          checkpoint: 'aed281f5c6c91a26ec1874f48868a9014da97748e5831ee012f0bf0445f5ab23'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  pkg 'UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
