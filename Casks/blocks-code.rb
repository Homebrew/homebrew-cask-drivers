cask "blocks-code" do
  version "0.2.3"
  sha256 "9d8d03f8f004bf5c5474e67065128d3c15806ed9594202596dbe1c094276943b"

  url "https://assets.roli.com/blocks/BLOCKS+Code/#{version}/BLOCKSCodeInstallerOSX_v#{version}.mpkg",
      verified: "assets.roli.com/blocks/"
  name "BLOCKS Code"
  desc "Develop applications for ROLI BLOCKS using the LittleFoot language"
  homepage "https://juce.com/blocks/code"

  livecheck do
    url "https://juce.com/blocks/code"
    regex(%r{/BLOCKSCodeInstallerOSX[._-]?v?(\d+(?:\.\d+)+)\.mpkg}i)
  end

  pkg "BLOCKSCodeInstallerOSX_v#{version}.mpkg"

  uninstall pkgutil: "com.roli.blocks.code"
end
