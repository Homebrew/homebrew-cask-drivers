cask 'openbci-gui' do
  version '4.1.0'
  sha256 'ff9dd9fda3f6f05289ccba5c028dfa819c47c46317fa0288abf1543207f0334c'

  # github.com/OpenBCI/OpenBCI_GUI was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/application.macosx.zip"
  appcast 'https://github.com/OpenBCI/OpenBCI_GUI/releases.atom'
  name 'OpenBCI GUI'
  homepage 'https://openbci.com/'

  app 'application.macosx/OpenBCI_GUI.app'

  uninstall quit: [
                    'OpenBCI_GUI',
                    'com.github.Squirrel',
                    'com.github.electron.framework',
                    'com.openbci.hub.*',
                    'org.mantle.Mantle',
                    'org.reactivecocoa.ReactiveCocoa',
                  ]

  zap trash: [
               '~/Library/Application Support/OpenBCIHub',
               '~/Library/Logs/OpenBCIHub',
               '~/Library/Preferences/com.openbci.hub.plist',
               '~/Library/Saved Application State/OpenBCI_GUI.savedState',
               '~/Library/Saved Application State/com.openbci.hub.savedState',
             ]
end
