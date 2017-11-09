cask 'kiibohd-configurator' do
  version '0.3.1'
  sha256 '2e529b465f99553cad8a79d8fa158cf2ba72fb3b0efea53e007a3d91e888bfe2'

  # github.com/kiibohd/configurator was verified as official when first introduced to the cask
  url "https://github.com/kiibohd/configurator/releases/download/v#{version}/kiibohd-configurator-#{version}-mac.dmg"
  appcast 'https://github.com/kiibohd/configurator/releases.atom',
          checkpoint: 'aff44721d184c9878c4007abd60bb2a4a00f5048bc27dbf923385bcf5051303e'
  name 'Kiibohd Configurator'
  homepage 'http://kiibohd.com/'

  depends_on formula: 'dfu-util'

  app 'Kiibohd Configurator.app'
end
