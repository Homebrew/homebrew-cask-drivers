cask 'wootility' do
  version '2.4.0'
  sha256 'a4d52d1a7162098fcdd25d28b6c1ae11c306782d9836c5c2a54b8cf8fa704c58'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/mac-latest/wootility-#{version}.dmg"
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
