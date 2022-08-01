cask "roli-connect" do
  version "1.1.2"
  sha256 :no_check

  url "https://api.roli.com/api/v1/product/com.roli.hub/latest/osx?flavor=general-edition"
  name "ROLI Connect"
  desc "Tools manager for ROLI products"
  homepage "https://roli.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "ROLI Connect.app"

  uninstall quit: "com.roli.hub"

  zap trash: [
    "~/Library/Application Support/ROLI Connect",
    "~/Library/Logs/ROLI Connect",
    "~/Library/Preferences/com.roli.hub.helper.plist",
    "~/Library/Preferences/com.roli.hub.plist",
    "~/Library/Saved Application State/com.roli.hub.savedState",
  ]
end
