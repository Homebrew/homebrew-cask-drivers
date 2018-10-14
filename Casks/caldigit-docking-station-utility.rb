cask 'caldigit-docking-station-utility' do
  version '1.9.05'
  sha256 '850cbcf0317656f478d6e96eddce7044b304f7f521f7647557d1f04151459c0d'

  url 'http://www.caldigit.com/support/CalDigit-Docking-Station-Utility.zip'
  name 'CalDigit Docking Station Utility'
  homepage 'http://www.caldigit.com/support.asp'

  pkg "CalDigit Docking Station Utility v#{version}.pkg", allow_untrusted: true

  uninstall pkgutil:    'com.CalDigit.caldigitDockingStationUtility.*',
            login_item: 'CalDigit_Docking_Station_Utility',
            quit:       'CalDigit.CalDigit-Docking-Station-Utility'
end
