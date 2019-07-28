cask 'openbci-gui' do
  version '4.1.3'
  sha256 '251b6d61cb459341fc20da9d982505823e3a1682ba7642669ed4be07f92e4bfe'

  # github.com/OpenBCI/OpenBCI_GUI was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/openbcigui_v#{version}_macosx.dmg"
  appcast 'https://github.com/OpenBCI/OpenBCI_GUI/releases.atom'
  name 'OpenBCI GUI'
  homepage 'https://openbci.com/'

  app 'OpenBCI_GUI.app'

  uninstall quit: [
                    'OpenBCI_GUI',
                    'com.openbci.hub.*',
                  ]

  zap trash: [
               '~/Library/Application Support/OpenBCIHub',
               '~/Library/Logs/OpenBCIHub',
               '~/Library/Preferences/com.openbci.hub.plist',
               '~/Library/Preferences/com.openbci.hub.helper.plist',
               '~/Library/Saved Application State/OpenBCI_GUI.savedState',
               '~/Library/Saved Application State/com.openbci.hub.savedState',
             ]
end
