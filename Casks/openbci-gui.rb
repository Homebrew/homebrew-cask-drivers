cask 'openbci-gui' do
  version '4.0.4'
  sha256 '40b577c70bbec7b920f2d5bb2235d487dfe565dc35982654f4377728c204855b'

  # github.com/OpenBCI/OpenBCI_GUI was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/application.macosx.zip"
  appcast 'https://github.com/OpenBCI/OpenBCI_GUI/releases.atom'
  name 'OpenBCI GUI'
  homepage 'https://openbci.com/'

  app 'application.macosx/OpenBCI_GUI.app'
end
