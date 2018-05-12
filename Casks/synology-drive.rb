cask 'synology-drive' do
  version '1.0.3-10281'
  sha256 '183d350ded3d563bf5330226e85471ba24a8ebe046ef1ac8eda312565b0f897d'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Synology Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
