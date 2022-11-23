cask "saleae-logic" do
  version "2.4.2"
  sha256 "d7ca7cf320715b381d89b7fa86c26c48135e1425d10ec4794c029ba44e614414"

  url "https://downloads.saleae.com/logic#{version.major}/Logic-macOS-#{version}-master.zip"
  name "Saleae Logic2"
  desc "Signal analysis for Saleae's devices"
  homepage "https://www.saleae.com/"

  livecheck do
    url "https://logic#{version.major}api.saleae.com/download?os=osx"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "Logic#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic#{version.major}",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
  ]
end
