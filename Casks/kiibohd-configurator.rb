cask 'kiibohd-configurator' do
  version '0.4.0'
  sha256 '7050368870895dd8afef53ad16ed721cf4cb8567475c7dede9cf3953a77ce595'

  # github.com/kiibohd/configurator was verified as official when first introduced to the cask
  url "https://github.com/kiibohd/configurator/releases/download/v#{version}/kiibohd-configurator-#{version}-mac.dmg"
  appcast 'https://github.com/kiibohd/configurator/releases.atom',
          checkpoint: '1db3516d2ce2b3935d26ecf289cccf90ebf87b27dbe2a65bd4a8227999636049'
  name 'Kiibohd Configurator'
  homepage 'http://kiibohd.com/'

  depends_on formula: 'dfu-util'

  app 'Kiibohd Configurator.app'
end
