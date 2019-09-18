cask 'kiibohd-configurator' do
  version '1.0.2'
  sha256 'b3eba8a4e3c44b68f5a8ab9cf14ea4531f4cda7d06b6ec84ba934950e0e7579a'

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
