cask 'hobbyquaker-arcticfox-config' do
  version '1.11.9'
  sha256 'd70536342088b6e592a484d61425e94c3309f642b15acb3e1a03a79bc8b31f69'

  url "https://github.com/hobbyquaker/arcticfox-config/releases/download/v#{version}/arcticfox-config-#{version}.dmg"
  appcast 'https://github.com/hobbyquaker/arcticfox-config/releases.atom',
          checkpoint: 'ef6c545fd5b45177cdf44f945bd728ce2925a5ba4aa1fca1dce51311ff412890'
  name 'Arcticfox Config'
  homepage 'https://github.com/hobbyquaker/arcticfox-config'

  app 'Arcticfox Config.app'
end
