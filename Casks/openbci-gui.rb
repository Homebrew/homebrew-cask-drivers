cask 'openbci-gui' do
  version '4.1.2-beta.0'
  sha256 '84c83667f955d6261fc88b0daa4489390ed048dd6fe922f76791f8d8a0104a02'

  # github.com/OpenBCI/OpenBCI_GUI was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/application.macosx.dmg"
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
               '~/Library/Saved Application State/OpenBCI_GUI.savedState',
               '~/Library/Saved Application State/com.openbci.hub.savedState',
             ]
end
