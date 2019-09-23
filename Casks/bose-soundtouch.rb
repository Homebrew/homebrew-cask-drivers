cask 'bose-soundtouch' do
  version '23.0.0-2805-d6e7bf6,st2_2019_a9bb72b0'
  sha256 '22e0c0d80199e8b83d21174337fc9cfc1890ed9433287d3d4f44a8d293d5ea0b'

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
