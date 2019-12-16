cask 'corsair-icue' do
  version '3.23.66'
  sha256 '0559dfaae141048dad8b7cfc6d08b467f564d7c53b3269a55763e540f767a710'

  url "https://downloads.corsair.com/Files/CUE/iCUE-#{version}-release.dmg"
  appcast 'https://forum.corsair.com/v3/showthread.php?t=182942&page=999999999'
  name 'Corsair iCUE'
  homepage 'https://www.corsair.com/us/en/icue'

  depends_on macos: '>= :high_sierra'

  pkg 'iCUE.pkg'

  uninstall launchctl: [
                         'com.corsair.AudioConfigService.System',
                         'com.corsair.cue.3.launchHelper',
                       ],
            quit:      [
                         'com.corsair.cue.*',
                         'org.qt-project.*',
                       ],
            script:    [
                         executable: '/usr/bin/osascript',
                         args:       ["#{appdir}/Corsair/iCUEUninstaller.app/Contents/Scripts/uninstall.scpt"],
                         sudo:       true,
                       ],
            pkgutil:   [
                         'com.corsair.CorsairAudio',
                         'com.corsair.cue.*',
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
