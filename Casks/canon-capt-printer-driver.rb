cask 'canon-capt-printer-driver' do
  version '3.93'
  sha256 '6ab22eb02be80fd6182460dfcacc024cc2c02e2fc2696c3f0701309076d8979f'

  # gdlp01.c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/2/0100008662/02/Mac_CAPT_V#{version.no_dots}_uk_EN.dmg"
  name 'Canon CAPT Printer Driver'
  homepage 'http://support-asia.canon-asia.com/contents/ASIA/EN/0100866220.html'

  pkg 'MacOSX/Canon_CAPT_Installer.pkg'

  uninstall launchctl: 'jp.co.canon.CUPSCAPT.BackGrounder',
            delete:    [
                         '/Library/Printers/Canon/CUPSCAPT',
                         '/Library/LaunchAgents/jp.co.canon.CUPSCAPT.BG.plist',
                         '/Library/Printers/PPDs/Contents/Resources/CNMCLBP*AUK.ppd.gz',
                       ]
end
