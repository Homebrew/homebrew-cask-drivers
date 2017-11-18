cask 'bose-soundtouch' do
  version '16.140.46-1747-f4480ce,mr3_2017-fefda4ce'
  sha256 'ca65da84a4c35f319f8dc17c98a011e9bcfac53869ccec131c1e87e012fdd793'

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
