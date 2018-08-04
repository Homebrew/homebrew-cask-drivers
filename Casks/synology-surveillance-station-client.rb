cask 'synology-surveillance-station-client' do
  version '1.1.4-0406'
  sha256 '1e4809ae9c58e25d564393b8a19fc153954fbdcd157eaeeaa8eb982e04b91feb'

  url "https://global.download.synology.com/download/Tools/SurveillanceStationClient/#{version}/Mac/Synology%20Surveillance%20Station%20Client-#{version}.dmg"
  name 'Synology Surveillance Station Client'
  homepage 'https://www.synology.com/surveillance/'

  pkg 'Surveillance Station Client.pkg'

  uninstall launchctl: 'com.synology.ssc.launch.agent',
            pkgutil:   [
                         'com.synology.svsclient-Live-View',
                         'com.synology.svsclient-Recording',
                         'com.synology.svsclient-Timeline',
                         'svsclient',
                       ],
            quit:      'svsclient'
end
