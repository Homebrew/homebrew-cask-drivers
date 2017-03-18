cask 'bose-soundtouch' do
  version '14.80.6-708-9bd051b'
  sha256 'e43759c8788dcfecae5af86f1f0d36231aa1ef09ebb0536f74dc101e345a5278'

  # bose.com was verified as official when first introduced to the cask
  url "https://downloads.bose.com/ced/soundtouch/mr4_2016/SoundTouch-app-installer-#{version}.dmg"
  name 'Bose Soundtouch Controller App'
  homepage 'https://www.soundtouch.com/'

  depends_on macos: '>= :mavericks'

  installer script: 'SoundTouch-osx-installer.app/Contents/MacOS/installbuilder.sh',
            args:   %w[--mode unattended],
            sudo:   true

  uninstall script: {
                      executable: '/Applications/SoundTouch/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       %w[--mode unattended],
                      sudo:       true,
                    },
            quit:   'com.Bose.SoundTouch'

  zap delete: [
                '~/Library/Application Support/com.Bose.SoundTouch',
                '~/Library/Caches/SoundTouch',
                '~/Library/Saved Application State/com.Bose.SoundTouch application.savedState',
              ]
end
