cask "clavia-nord-sound-manager" do
  version "7.66"
  sha256 "2baebfd9ae173e0405cb69f28da56b36d74e3713826c90af394063c1ce40dd1f"

  url "https://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  name "Clavia Nord Sound Manager"
  desc "Organize and backup the memory of your Nord instrument"
  homepage "https://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Nord%20Sound%20Manager%20v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Nord Sound Manager v#{version}.app"

  zap trash: [
    "~/Library/Preferences/com.clavia.NordSoundManager.plist",
    "~/Library/Saved Application State/com.clavia.NordSoundManager.savedState",
  ]
end
