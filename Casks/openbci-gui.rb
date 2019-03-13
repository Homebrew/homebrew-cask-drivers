cask 'openbci-gui' do
  version '4.1.0'
  sha256 '9142823e81fefb67f514468c5cad35e47fc38d815dc94d2b81e889a814f89763'

  # github.com/OpenBCI/OpenBCI_GUI was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/application.macosx.zip"
  appcast 'https://github.com/OpenBCI/OpenBCI_GUI/releases.atom'
  name 'OpenBCI GUI'
  homepage 'https://openbci.com/'

  app 'application.macosx/OpenBCI_GUI.app'
end
