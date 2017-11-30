cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.14.00'
  sha256 '8fac2ab483e96a772b4bcc20a569a99142d5e65298f357ccbaae3f5a2ccb6a1a'

  url "https://downloads.canon.com/bisg2017/drivers/mac/UFRII_v#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English',
          checkpoint: '6a0feb046e6d63f6e703a56d762acbad70dc6c42184590975c88b57413c8522e'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  pkg 'UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
