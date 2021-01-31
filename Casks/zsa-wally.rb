cask "zsa-wally" do
  version "2.1.0"
  sha256 "23f2770744800ba2af2f33caa297c6621a6610c4999ad0d3cf7673a5060c2a44"

  url "https://github.com/zsa/wally/releases/download/#{version}-osx/wally-osx-#{version}.dmg",
      verified: "github.com/zsa/wally/"
  appcast "https://github.com/zsa/wally/releases.atom"
  name "Wally"
  homepage "https://ergodox-ez.com/pages/wally"

  app "Wally.app"
end
