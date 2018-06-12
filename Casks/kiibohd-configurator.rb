cask 'kiibohd-configurator' do
  version '0.4.1'
  sha256 '71cd04f9b660e5ebd06c3647e153975078f8d808078e98f59caa6833631beee3'

  # github.com/kiibohd/configurator was verified as official when first introduced to the cask
  url "https://github.com/kiibohd/configurator/releases/download/v#{version}/kiibohd-configurator-#{version}-mac.dmg"
  appcast 'https://github.com/kiibohd/configurator/releases.atom'
  name 'Kiibohd Configurator'
  homepage 'http://kiibohd.com/'

  depends_on formula: 'dfu-util'

  app 'Kiibohd Configurator.app'
end
