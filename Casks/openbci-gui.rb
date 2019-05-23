cask 'openbci-gui' do
  version '4.1.2'
  sha256 '51d879478355a4bbda7e533d505ee02463f375d07f0ffab8ea371222fc091b40'

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
