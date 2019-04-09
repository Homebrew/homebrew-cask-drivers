cask 'wootility' do
  version '3.1.3'
  sha256 '86c7e0945fb7110728ee85d188d61963f0e8c9e3068a490d97ff24a091e41669'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-mac-latest/wootility-#{version}.dmg"
  appcast 'https://wooting.io/wootility'
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
