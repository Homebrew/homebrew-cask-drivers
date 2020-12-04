cask "qnap-external-raid-manager" do
  version "1.3.0.1127"
  sha256 "b0d542eda74f8c8ae31bdc8db8205e015b7947c5262458114ebee1dbef24c711"

  url "https://download.qnap.com/Storage/Utility/QNAPExternalRAIDManagerMac-#{version}.dmg"
  name "QNAP External Raid Manager"
  homepage "https://www.qnap.com/en/utilities/essentials"

  depends_on macos: ">= :high_sierra"

  pkg "QNAP External RAID Manager.pkg"

  uninstall quit:    "com.qnap.raidmanager",
            pkgutil: "com.qnap.raidmanager",
            delete:  "/Library/Application Support/QNAP/QNAP External RAID Manager",
            rmdir:   "/Library/Application Support/QNAP"
end
