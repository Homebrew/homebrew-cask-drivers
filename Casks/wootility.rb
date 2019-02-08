cask 'wootility' do
  version '3.0.2'
  sha256 '7e536ef51d0b85e42d44c4ef760fcb3d12f426896358405a1c710550e07e0773'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-mac-latest/wootility-#{version}.dmg"
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
