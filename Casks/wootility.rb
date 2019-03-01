cask 'wootility' do
  version '3.1.3'
  sha256 '9f00c1ce9e7bad0c2dfe22046ebbd401488e057bdb66af45a676ee5030847633'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-mac-latest/wootility-#{version}.dmg"
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
