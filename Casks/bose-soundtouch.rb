cask 'bose-soundtouch' do
  version '15.120.23-1440-a59673d,mr2_2017-c7dabc12'
  sha256 'd650b65a93bc56f0391b99568e7248d69429a9dd096224968d7e7ee87fcebf74'

  # bose.com was verified as official when first introduced to the cask
  url "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/SoundTouch-app-installer-#{version.before_comma}.dmg"
  appcast 'https://downloads.bose.com/ced/soundtouch/soundtouch_controller_app/index.html',
          checkpoint: '93458a17a19ac42e6f8cf9e925257a69618800daff8dfa9d698f6f6e7c6cae8e'
  name 'Bose Soundtouch Controller App'
  homepage 'https://www.soundtouch.com/'

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

  zap delete: [
                '~/Library/Application Support/SoundTouch',
                '~/Library/Caches/SoundTouch',
                '~/Library/Saved Application State/com.Bose.SoundTouch application.savedState',
                '~/Library/Saved Application State/com.Bose.SoundTouch.savedState',
              ]
end
