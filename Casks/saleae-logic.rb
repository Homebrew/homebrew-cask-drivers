cask "saleae-logic" do
  version "2.3.41"
  sha256 "1478b75f7fefc2320c822aad1072ee94711017a55a6d245ace6c31f6b30091ab"

  url "https://downloads.saleae.com/logic#{version.major}/Logic-macOS-#{version}-master.zip"
  name "Saleae Logic2"
  desc "Signal analysis for Saleae's devices"
  homepage "https://www.saleae.com/"

  livecheck do
    url "https://logic2api.saleae.com/download?os=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Logic#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic#{version.major}",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
  ]
end
