cask 'synology-surveillance-station-client' do
  version '1.2.5-0659'
  sha256 'ca4a8f089e4df91899405a613d3b8b0655628e510ee6f16282ce3dd834f5dc80'

  url "https://global.download.synology.com/download/Tools/SurveillanceStationClient/#{version}/Mac/Synology%20Surveillance%20Station%20Client-#{version}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SurveillanceStationClient/'
  name 'Synology Surveillance Station Client'
  homepage 'https://www.synology.com/surveillance/'

  pkg 'Install Synology Surveillance Station Client.pkg'

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
