cask 'synology-surveillance-station-client' do
  version '1.0.5-0232'
  sha256 '117ff0ffbdffe945297389980cc4744eb531949fe428cb7db3f20e7b4786f4e0'

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
