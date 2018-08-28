cask 'openbci-gui' do
  version '3.4.0'
  sha256 'f0c197590193bd7af00bc56c1e1ff8789ef4bd962cbd7abee1ab7f81558e1c34'

  # github.com/OpenBCI/OpenBCI_GUI was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/#{version}/application.macosx.zip"
  appcast 'https://github.com/OpenBCI/OpenBCI_GUI/releases.atom'
  name 'OpenBCI GUI'
  homepage 'https://openbci.com/'

  app 'application.macosx/OpenBCI_GUI.app'
end
