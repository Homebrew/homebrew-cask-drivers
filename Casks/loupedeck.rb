cask 'loupedeck' do
  version '2.7.2'
  sha256 '91e87c9271dbf4a54d6cd533105b09e9de24839de5bfed17a6f6baa48699907e'

  # loupedeck-software-release.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://loupedeck-software-release.s3.amazonaws.com/Software_Release_Mac_#{version.dots_to_underscores}/Loupedeck_#{version.dots_to_underscores}.dmg"
  name 'Loupdeck'
  homepage 'https://loupedeck.com/'

  depends_on macos: '>= :sierra'

  pkg "Loupedeck_#{version.dots_to_underscores}.pkg"

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
