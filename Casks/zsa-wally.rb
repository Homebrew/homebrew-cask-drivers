cask "zsa-wally" do
  version "2.0.0"
  sha256 "e29fa65666e859de3bc7f0ebce5ef92012f568116721b5d321c12fede5684287"

  # github.com/zsa/wally/ was verified as official when first introduced to the cask
  url "https://github.com/zsa/wally/releases/download/#{version}-osx/wally-osx-#{version}.dmg"
  appcast "https://github.com/zsa/wally/releases.atom"
  name "Wally"
  homepage "https://ergodox-ez.com/pages/wally"

  app "Wally.app"
end
