cask 'wootility' do
  version '3.2.5'
  sha256 'a283251399882018237841462cdd0af50b69cacb3c1712bde40a2da5af3c1673'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-mac-latest/wootility-#{version}.dmg"
  appcast 'https://wooting.io/wootility'
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
