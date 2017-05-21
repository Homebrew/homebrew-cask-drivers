cask 'bose-soundtouch' do
  version '14.80.6-708-9bd051b'
  sha256 'e43759c8788dcfecae5af86f1f0d36231aa1ef09ebb0536f74dc101e345a5278'

  # bose.com was verified as official when first introduced to the cask
  url "https://downloads.bose.com/ced/soundtouch/mr4_2016/SoundTouch-app-installer-#{version}.dmg"
  appcast 'https://downloads.bose.com/ced/soundtouch/soundtouch_controller_app/index.html',
          checkpoint: '93458a17a19ac42e6f8cf9e925257a69618800daff8dfa9d698f6f6e7c6cae8e'
  name 'Bose Soundtouch Controller App'
  homepage 'https://www.soundtouch.com/'

  depends_on macos: '>= :mavericks'

  installer script: {
                      executable: 'SoundTouch-osx-installer.app/Contents/MacOS/installbuilder.sh',
                      args:       %w[--mode unattended],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/SoundTouch/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       %w[--mode unattended],
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
