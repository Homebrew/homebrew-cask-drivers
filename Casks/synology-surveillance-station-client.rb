cask 'synology-surveillance-station-client' do
  version '1.2.0-0512'
  sha256 '124e5e97b75aed830dfb958c8b18c34737a25e05f46c941101be1605fe984cfd'

  url "https://global.download.synology.com/download/Tools/SurveillanceStationClient/#{version}/Mac/Synology%20Surveillance%20Station%20Client-#{version}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SurveillanceStationClient/'
  name 'Synology Surveillance Station Client'
  homepage 'https://www.synology.com/surveillance/'

  pkg 'Install Surveillance Station Client.pkg'

  uninstall launchctl: 'com.synology.ssc.launch.agent',
            delete:    '/Applications/Surveillance Station Client.app',
            pkgutil:   [
                         'com.synology.svsclient-Live-View',
                         'com.synology.svsclient-Recording',
                         'com.synology.svsclient-Timeline',
                         'svsclient',
                         'SurveillanceStationClient',
                       ],
            quit:      [
                         'svsclient',
                         'SurveillanceStationClient',
                       ]
end
