cask 'synology-surveillance-station-client' do
  version '1.2.7-0775'
  sha256 '0a32f9c8f1f3651bc5967835f126939b0f46b8208536c3b0f9f4d8f804c54937'

  url "https://global.download.synology.com/download/Tools/SurveillanceStationClient/#{version}/Mac/Synology%20Surveillance%20Station%20Client-#{version}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SurveillanceStationClient/'
  name 'Synology Surveillance Station Client'
  homepage 'https://www.synology.com/surveillance/'

  pkg 'Install Synology Surveillance Station Client.pkg'

  uninstall launchctl: 'com.synology.svsclient-SurveillanceStationClient',
            delete:    '/Applications/Synology Surveillance Station Client.app',
            quit:      'com.synology.svsclient-SurveillanceStationClient',
            pkgutil:   [
                         'com.synology.svsclient-Live-View',
                         'com.synology.svsclient-Recording',
                         'com.synology.svsclient-Timeline',
                         'com.synology.svsclient-SurveillanceStationClient',
                       ]
end
