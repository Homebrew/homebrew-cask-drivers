cask 'zsa-wally' do
  version '1.1.3'
  sha256 '3e6327f23743e3163a7bed4130f73830ecaeea400098003354ec8c63e0010095'

  # github.com/zsa/wally was verified as official when first introduced to the cask
  url "https://github.com/zsa/wally/releases/download/#{version}-osx/wally-osx-#{version}.dmg"
  appcast 'https://github.com/zsa/wally/releases.atom'
  name 'Wally'
  homepage 'https://ergodox-ez.com/pages/wally'

  app 'Wally.app'
  binary 'wally-cli'
end
