cask 'hobbyquaker-arcticfox-config' do
  version '1.11.10'
  sha256 '339279b0d46e2bde414b63d4ab349fb9e9206c953148c49eb303daf42aee3d7f'

  url "https://github.com/hobbyquaker/arcticfox-config/releases/download/v#{version}/arcticfox-config-#{version}.dmg"
  appcast 'https://github.com/hobbyquaker/arcticfox-config/releases.atom',
          checkpoint: '5c16937012c13e082078543176ef4bb72b22f673d05f485e3514c75be69e5926'
  name 'Arcticfox Config'
  homepage 'https://github.com/hobbyquaker/arcticfox-config'

  app 'Arcticfox Config.app'
end
