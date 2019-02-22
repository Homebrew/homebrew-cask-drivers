cask 'wootility' do
  version '3.1.2'
  sha256 '82141b7e7fbd35c634f91ae462d677834d337a4709d0b3528e0854a604d8dda5'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-mac-latest/wootility-#{version}.dmg"
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
