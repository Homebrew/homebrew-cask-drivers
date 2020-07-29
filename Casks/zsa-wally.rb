cask "zsa-wally" do
  version "1.1.3"
  sha256 "9dc788e16b0dd3336748867c1b5b1c06f2c55010d5b6a037cd5cbf22c67b61ef"

  # github.com/zsa/wally/ was verified as official when first introduced to the cask
  url "https://github.com/zsa/wally/releases/download/#{version}-osx/wally-osx-#{version}.dmg"
  appcast "https://github.com/zsa/wally/releases.atom"
  name "Wally"
  homepage "https://ergodox-ez.com/pages/wally"

  app "Wally.app"
  binary "wally-cli"
end
