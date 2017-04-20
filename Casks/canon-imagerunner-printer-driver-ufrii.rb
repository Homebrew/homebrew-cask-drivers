cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.12.00'
  sha256 '55aca054f2612421fea2f1e56d46a6da0cc4fb282b40c9b07fb2ad109da8062a'

  url "https://downloads.canon.com/bisg2017/drivers/mac/UFRII_v#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English',
          checkpoint: '8070640fd55e4474476109c7de55d0b63716d5c540d477bdea904a1c00548b2b'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  pkg 'Office/UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
