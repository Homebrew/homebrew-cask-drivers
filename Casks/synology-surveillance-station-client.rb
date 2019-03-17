cask 'synology-surveillance-station-client' do
  version '1.2.4-0642'
  sha256 'ad4a2a95ea68df329f3b2809f169a35d70d0b5429367ccfa8495339abb5f4109'

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
