cask "blocks-code" do
  version "0.2.3"
  sha256 "9d8d03f8f004bf5c5474e67065128d3c15806ed9594202596dbe1c094276943b"

  url "https://assets.roli.com/blocks/BLOCKS+Code/#{version}/BLOCKSCodeInstallerOSX_v#{version}.mpkg",
      verified: "assets.roli.com/blocks/"
  appcast "https://juce.com/blocks/code"
  name "BLOCKS Code"
  homepage "https://juce.com/blocks/code"

  pkg "BLOCKSCodeInstallerOSX_v#{version}.mpkg"

  uninstall pkgutil: "com.roli.blocks.code"
end
