cask "clavia-nord-sound-manager" do
  version "7.60"
  sha256 "ec5b07748e8b2028089635d09e345b888e080b6ae339f8b90e976a163f401e80"

  url "https://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  name "Clavia Nord Sound Manager"
  desc "Organize and backup the memory of your Nord instrument"
  homepage "https://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Nord%20Sound%20Manager%20v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Nord Sound Manager v#{version}.app"

  zap trash: [
    "~/Library/Preferences/com.clavia.NordSoundManager.plist",
    "~/Library/Saved Application State/com.clavia.NordSoundManager.savedState",
  ]
end
