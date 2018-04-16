cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.15.00'
  sha256 '819181ebc0becfdb2cab2fb4809c957ae88ce1991a29b9ce1a45572e68420b17'

  url "https://downloads.canon.com/bisg2018/drivers/mac/UFRII_v#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English',
          checkpoint: '8e5f135aa054d414351565b1ef967b215f94ed40b69d98a43eeeeb6e9d03e8a4'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  pkg 'UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
