cask 'canon-ufrii-lt-printer-driver' do
  version '1.5.4'
  sha256 '1d6c19b2234d4c42c731c4356fe89cc269929d5c0e9f97b06fdcc1454c5ba4c8'

  # gdlp01.c-wss.com/gds/1/0100010451/03 was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/1/0100010451/03/mac-UFRIILT-CARPS2LBP-v#{version.no_dots}-00.dmg"
  appcast 'https://my.canon/en/support/0101045101/3'
  name 'Canon UFRII LT Printer Driver'
  homepage 'https://my.canon/en/support/0101045101/3'

  depends_on macos: '>= :mavericks'

  pkg 'UFRII_LT_CARPS2_Installer.pkg'

  uninstall launchctl: 'jp.co.canon.CUPSSFPPrinter.BackGrounder',
            pkgutil:   [
                         'jp.co.canon.CUPSSFPPrinter.cnaccm.CommonDAT.pkg',
                         'jp.co.canon.CUPSSFPPrinter.profiles.CommonICC.pkg',
                         'jp.co.canon.CUPSSFPPrinter.icons.CommonICON.pkg',
                         'jp.co.canon.CUPSSFPPrinter.device.CNPZNLBP8100ZN.pkg',
                         'jp.co.canon.CUPSSFPPrinter.device.CNPZNLBP7100CZN.pkg',
                         'jp.co.canon.CUPSSFPPrinter.device.CNPZNLBP6230ZN.pkg',
                         'jp.co.canon.CUPSSFPPrinter.device.CNPZNLBP6030ZN.pkg',
                         'jp.co.canon.CUPSSFPPrinter.device.CNPZNLBP151ZN.pkg',
                         'jp.co.canon.CUPSSFPPrinter.device.CNPZNLBP113ZN.pkg',
                         'jp.co.canon.CUPSSFPPrinter.device.CNPZNLBP112ZN.pkg',
                         'jp.co.canon.CUPSSFPPrinter.core.pkg',
                       ],
end
