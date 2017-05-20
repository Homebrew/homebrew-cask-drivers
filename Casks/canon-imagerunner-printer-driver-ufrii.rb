cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.13.00'
  sha256 '6abf81344ad8544b3163d4387ebae549945d0801ee8443c1bdba54f00c8b0002'

  url "https://downloads.canon.com/bisg2017/drivers/mac/UFRII_v#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English',
          checkpoint: 'b8ee245c4de332ff2174813790a276ab22e8432c8c2b0a8110358fe9c106bf07'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  pkg 'UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
