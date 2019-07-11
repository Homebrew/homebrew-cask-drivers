cask 'bose-soundtouch' do
  version '22.0.2-2735-8ff3929,st1_2019_95571ec9'
  sha256 'd8ad127559f91e9ea9a793549434a47090cb77f6b53261778b54aa4a872c070c'

  url "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/SoundTouch-app-installer-#{version.before_comma}.dmg"
  appcast "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/index.xml"
  name 'Bose Soundtouch Controller App'
  homepage 'https://downloads.bose.com/ced/soundtouch/soundtouch_controller_app/index.html'

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
