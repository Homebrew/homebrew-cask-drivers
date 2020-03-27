cask 'bose-soundtouch' do
  version '23.0.0-2933-a445a28,st1_2020_6e1ac2aa'
  sha256 '62e7e781d08dd2cc079a5225ebd5517b2b55a93bfb15e07320c397b8ff9b0ed9'

  url "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/SoundTouch-app-installer-#{version.before_comma}.dmg"
  appcast "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/index.xml"
  name 'Bose Soundtouch Controller App'
  homepage 'https://downloads.bose.com/ced/soundtouch/soundtouch_controller_app/index.html'

  auto_updates true

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
