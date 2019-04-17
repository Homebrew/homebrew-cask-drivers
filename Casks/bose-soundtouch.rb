cask 'bose-soundtouch' do
  version '21.0.3-2635-5a2f205,mr4_2018_63f87764'
  sha256 '967073b8d66effc2afdaf6fc157542812c07acc8e697534485bbefd6115858d3'

  # bose.com was verified as official when first introduced to the cask
  url "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/SoundTouch-app-installer-#{version.before_comma}.dmg"
  appcast 'https://worldwide.bose.com/updates/soundtouch'
  name 'Bose Soundtouch Controller App'
  homepage 'https://www.soundtouch.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  installer script: {
                      executable: 'SoundTouch-osx-installer.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/SoundTouch/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    },
            quit:   'com.Bose.SoundTouch'

  zap trash: [
               '~/Library/Application Support/SoundTouch',
               '~/Library/Caches/SoundTouch',
               '~/Library/Saved Application State/com.Bose.SoundTouch application.savedState',
               '~/Library/Saved Application State/com.Bose.SoundTouch.savedState',
             ]
end
