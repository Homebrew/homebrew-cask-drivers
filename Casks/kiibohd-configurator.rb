cask 'kiibohd-configurator' do
  version '1.0.0'
  sha256 '8591e8fd0a18f2a0a5c0a1022c126ddc5c5715ec8f5a7af3d9e756883e715e39'

  # github.com/kiibohd/configurator was verified as official when first introduced to the cask
  url "https://github.com/kiibohd/configurator/releases/download/v#{version}/kiibohd-configurator-#{version}-mac.dmg"
  appcast 'https://github.com/kiibohd/configurator/releases.atom'
  name 'Kiibohd Configurator'
  homepage 'http://kiibohd.com/'

  depends_on formula: 'dfu-util'

  app 'Kiibohd Configurator.app'
end
