cask 'synology-surveillance-station-client' do
  version '1.2.0-0553'
  sha256 '08d28121d019556aa4cfdf4e395e7ac9cdc987be765c5f92d570fe500b01406c'

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
                       ],
end
