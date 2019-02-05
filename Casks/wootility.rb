cask 'wootility' do
  version '3.0.1'
  sha256 '46ce15a3c646034ed85f743c9945d37f9cb6f5c6b8dad122b059d805eb2ef7b2'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-mac-latest/wootility-#{version}.dmg"
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
