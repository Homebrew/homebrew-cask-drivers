cask 'openbci-gui' do
  version '4.0.3'
  sha256 'f0b4f0ea2f39718b64e5dfea95e4b565aceeaf23a93780f5b16e8a116f754d3a'

  # github.com/OpenBCI/OpenBCI_GUI was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/application.macosx.zip"
  appcast 'https://github.com/OpenBCI/OpenBCI_GUI/releases.atom'
  name 'OpenBCI GUI'
  homepage 'https://openbci.com/'

  app 'application.macosx/OpenBCI_GUI.app'
end
