cask 'synology-surveillance-station-client' do
  version '1.2.2-0589'
  sha256 '7100cab971fd02b7049ae1276bc4a744f6c81f05015afcbff5ce253d39709175'

  url "https://global.download.synology.com/download/Tools/SurveillanceStationClient/#{version}/Mac/Synology%20Surveillance%20Station%20Client-#{version}.dmg"
  appcast 'https://www.synology.com/releaseNote/SurveillanceStationClient'
  name 'Synology Surveillance Station Client'
  homepage 'https://www.synology.com/surveillance/'

  pkg 'Install Surveillance Station Client.pkg'

  uninstall launchctl: 'com.synology.svsclient-SurveillanceStationClient',
            delete:    '/Applications/Surveillance Station Client.app',
            quit:      'com.synology.svsclient-SurveillanceStationClient',
            pkgutil:   [
                         'com.synology.svsclient-Live-View',
                         'com.synology.svsclient-Recording',
                         'com.synology.svsclient-Timeline',
                         'com.synology.svsclient-SurveillanceStationClient',
                       ]
end
