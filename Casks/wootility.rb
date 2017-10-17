cask 'wootility' do
  version '1.0.8'
  sha256 '3a21259a36680e35e40944bf2f3c0b4572ff79257533f563cf91b63cb76c7c28'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/mac-latest/wootility-#{version}.dmg"
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
