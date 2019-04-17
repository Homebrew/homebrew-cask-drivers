cask 'wootility' do
  version '3.2.6'
  sha256 'b5929c7de16f771d5a073c7fc215767644bc271b323291937f351963601d8f3a'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-mac-latest/wootility-#{version}.dmg"
  appcast 'https://wooting.io/wootility'
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
