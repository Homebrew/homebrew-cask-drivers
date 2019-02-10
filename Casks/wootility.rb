cask 'wootility' do
  version '3.0.3'
  sha256 '2f8329a77a445d143b705808b3fd9d7e0118de6d5159a0170d4611f81f118525'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-mac-latest/wootility-#{version}.dmg"
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
