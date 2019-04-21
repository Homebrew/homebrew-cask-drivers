cask 'loupedeck' do
  version '2.6'
  sha256 'ed7317f5fd58e7496c529448d4076f87a847c97bd6716368eb8ebb44cb9a4879'

  # s3.eu-north-1.amazonaws.com/loupedeck-software-release was verified as official when first introduced to the cask
  url "https://s3.eu-north-1.amazonaws.com/loupedeck-software-release/software_release_version_#{version.dots_to_underscores}/mac_#{version.dots_to_underscores}/Loupedeck_#{version.dots_to_underscores}.dmg"
  name 'Loupdeck'
  homepage 'https://loupedeck.com/'

  depends_on macos: '>= :sierra'

  pkg "Loupedeck Installer #{version}.pkg"

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
