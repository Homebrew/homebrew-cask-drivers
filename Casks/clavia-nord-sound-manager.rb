cask "clavia-nord-sound-manager" do
  version "7.70"
  sha256 "edd00b5eb13583212ccc584f8ee1589eb7f09a09fb99dbdf1e27a9c9b8716fa6"

  url "https://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  name "Clavia Nord Sound Manager"
  desc "Organize and backup the memory of your Nord instrument"
  homepage "https://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Nord%20Sound%20Manager%20v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Nord Sound Manager v#{version}.app"

  zap trash: [
    "~/Library/Preferences/com.clavia.NordSoundManager.plist",
    "~/Library/Saved Application State/com.clavia.NordSoundManager.savedState",
  ]
end
