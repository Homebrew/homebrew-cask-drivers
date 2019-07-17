cask 'kiibohd-configurator' do
  version '1.0.1'
  sha256 '3a791deb24cd9bdb4c12292d040effa3b9532083dd795aa2f8f968a1de1a7700'

  # github.com/kiibohd/configurator was verified as official when first introduced to the cask
  url "https://github.com/kiibohd/configurator/releases/download/v#{version}/kiibohd-configurator-#{version}-mac.dmg"
  appcast 'https://github.com/kiibohd/configurator/releases.atom'
  name 'Kiibohd Configurator'
  homepage 'http://kiibohd.com/'

  depends_on formula: 'dfu-util'

  app 'Kiibohd Configurator.app'

  uninstall quit: 'club.input.KiibohdConfigurator'

  zap trash: [
    '~/Library/Application Support/kiibohd-configurator',
    '~/Library/Logs/Kiibohd Configurator',
    '~/Library/Preferences/club.input.KiibohdConfigurator.plist',
    '~/Library/Saved Application State/club.input.KiibohdConfigurator.savedState',
  ]
end
