cask 'synology-surveillance-station-client' do
  version '1.1.2-0384'
  sha256 '333c1077299822e193d8ebd4ea45d50280f9daf214143e35461592570ef9092f'

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
