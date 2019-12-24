cask 'loupedeck' do
  version '3.1'
  sha256 'c4a3c7fe81df3482ad1c3eb6dca5b14b965a7c7c051974df9bbf8268209f015d'

  # loupedeck-software-release.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://loupedeck-software-release.s3.amazonaws.com/Software+Release+#{version}/MacOS+#{version}/Loupedeck_Software_#{version.dots_to_underscores}.dmg"
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
                       'com.loupedeck.ImageLibraryInstaller',
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
