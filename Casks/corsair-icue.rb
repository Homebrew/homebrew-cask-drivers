cask 'corsair-icue' do
  version '3.22.74'
  sha256 '27bbf2c00dbc51e2ce4c6860563def491fc790eff17c0b8934a8b16db476fd00'

  url "https://downloads.corsair.com/Files/CUE/iCUE-#{version}-release.dmg"
  appcast 'https://forum.corsair.com/v3/showthread.php?t=182942&page=999999999'
  name 'Corsair iCUE'
  homepage 'https://www.corsair.com/us/en/icue'

  depends_on macos: '>= :high_sierra'

  pkg 'iCUE.pkg'

  uninstall launchctl: 'com.corsair.cue.3.launchHelper',
            quit:      [
                         'com.corsair.cue.3.*',
                         'org.qt-project.*',
                       ],
            script:    [
                         executable: '/usr/bin/osascript',
                         args:       ["#{appdir}/Corsair/iCUE.app/Contents/Helpers/iCUEUninstaller.app/Contents/Scripts/uninstall.scpt"],
                         sudo:       true,
                       ],
            pkgutil:   [
                         'com.corsair.CorsairAudio',
                         'com.corsair.cue.3',
                       ],
            delete:    [
                         '/Library/Audio/Plug-Ins/HAL/CorsairAudio.plugin',
                         '/Library/LaunchAgents/iCUELaunchAgent.plist',
                       ],
            rmdir:     '/Applications/Corsair'

  zap trash: [
               '~/.config/com.corsair',
               '~/Library/Application Support/Corsair',
               '~/Library/Caches/Corsair',
               '~/Library/Caches/iCUEUninstaller',
               '~/Library/Preferences/com.corsair.cue.3.plist',
               '~/Library/Saved Application State/com.corsair.cue.3.cue_unistaller.savedState',
               '~/Library/Saved Application State/com.corsair.cue.3.savedState',
             ]
end
