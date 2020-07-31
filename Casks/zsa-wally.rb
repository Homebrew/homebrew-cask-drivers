cask "zsa-wally" do
  version "2.0.0"
  sha256 "b07a27738d9a462a32167c4d237fb3eb62a9221cc72686243eb13727cecbd1e2"

  # github.com/zsa/wally/ was verified as official when first introduced to the cask
  url "https://github.com/zsa/wally/releases/download/#{version}-osx/wally-osx-#{version}.dmg"
  appcast "https://github.com/zsa/wally/releases.atom"
  name "Wally"
  homepage "https://ergodox-ez.com/pages/wally"

  app "Wally.app"
end
