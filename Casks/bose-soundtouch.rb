cask 'bose-soundtouch' do
  version '17.170.80-1819-25804d2,mr4_2017_73e7b563'
  sha256 '6a02275b5373b0ec4c9af723f8b540e0174fbdb75b6ac28312bd32f70aa9b6d2'

  # bose.com was verified as official when first introduced to the cask
  url "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/SoundTouch-app-installer-#{version.before_comma}.dmg"
  appcast 'https://downloads.bose.com/ced/soundtouch/soundtouch_controller_app/index.html',
          checkpoint: '93458a17a19ac42e6f8cf9e925257a69618800daff8dfa9d698f6f6e7c6cae8e'
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
