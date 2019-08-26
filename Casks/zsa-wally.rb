cask 'zsa-wally' do
  version '1.1.2'
  sha256 'a34ac89556fba79661485844f3cf5e7f725bed501a6e3bc6d72d686be6cc9664'

  # github.com/zsa/wally was verified as official when first introduced to the cask
  url "https://github.com/zsa/wally/releases/download/#{version}-osx/wally-osx-#{version}.dmg"
  appcast 'https://github.com/zsa/wally/releases.atom'
  name 'Wally'
  homepage 'https://ergodox-ez.com/pages/wally'

  app 'Wally.app'
end
