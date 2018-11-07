cask 'openbci-gui' do
  version '4.0.2'
  sha256 '12c336479cd751e712b9aac886dfa524c0a31b9ab1429de54c6fc2b9a2e0c65f'

  # github.com/OpenBCI/OpenBCI_GUI was verified as official when first introduced to the cask
  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/application.macosx.zip"
  appcast 'https://github.com/OpenBCI/OpenBCI_GUI/releases.atom'
  name 'OpenBCI GUI'
  homepage 'https://openbci.com/'

  app 'application.macosx/OpenBCI_GUI.app'
end
