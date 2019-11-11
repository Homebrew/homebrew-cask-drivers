cask 'loupedeck' do
  version '3.0'
  sha256 '459f06b84e7d49b9a8aff084208350fc8662f4ddc2452cb304224cfd0896d1a5'

  # loupedeck-software-release.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://loupedeck-software-release.s3.amazonaws.com/Software_Release_#{version}/Loupedeck_Mac_Release_#{version}/Loupedeck_MacOS_v#{version.dots_to_underscores}.dmg"
  name 'Loupdeck'
  homepage 'https://loupedeck.com/'

  depends_on macos: '>= :sierra'

  pkg "LoupedeckInstaller #{version}.pkg"

  uninstall signal:  [
                       ['TERM', 'com.loupedeck.Loupedeck2'],
                       ['QUIT', 'com.loupedeck.Loupedeck2'],
                       ['INT', 'com.loupedeck.Loupedeck2'],
                       ['HUP', 'com.loupedeck.Loupedeck2'],
                       ['KILL', 'com.loupedeck.Loupedeck2'],
                     ],
            pkgutil: [
                       'com.loupedeck.PluginPackageInstaller',
                       'com.loupedeck.LoupedeckPackageInstaller',
                     ],
            delete:  [
                       '~/Library/Application Support/Capture One/KeyboardShortcuts/Loupedeck_beta.plist',
                       '~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck - Loke Roos',
                       '~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck - Karo Holmberg',
                       '~/Library/Application Support/Adobe/Lightroom/Export Presets/Loupedeck Exports',
                       '~/Library/Application Support/Adobe/Lightroom/Modules/loupedeck2.lrplugin',
                       '~/Library/Application Support/LoupedeckConfig',
                       '~/Library/Logs/LoupedeckConfig',
                     ]
end
