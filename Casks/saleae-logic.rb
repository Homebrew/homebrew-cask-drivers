cask "saleae-logic" do
  version "2.3.38"
  sha256 "b1ac4b423cfd3db211a7786623bbe6ffdad20b6305450e18b0ee89ef47e1adcd"

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
