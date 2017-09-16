cask 'synology-surveillance-station-client' do
  version '1.1.0-0324'
  sha256 '73d95edcbb7df4a7534ea5020cda00f6099b350d0059b8a917e95461526508ec'

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
