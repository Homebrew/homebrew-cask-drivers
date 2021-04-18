cask "qnap-external-raid-manager" do
  version "1.3.3.0317"
  sha256 "2281b1df0dcea8ac2d53c5b367bbd9b3ff5c9efbf708e58e213dae2368080c7a"

  url "https://download.qnap.com/Storage/Utility/QNAPExternalRAIDManagerMac-#{version}.dmg"
  name "QNAP External Raid Manager"
  desc "Set up, monitor, and view the status of your QNAP external RAID devices"
  homepage "https://www.qnap.com/en/utilities/essentials"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/QNAPExternalRAIDManagerMac-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "QNAP External RAID Manager.pkg"

  uninstall quit:    "com.qnap.raidmanager",
            pkgutil: "com.qnap.raidmanager",
            delete:  "/Library/Application Support/QNAP/QNAP External RAID Manager",
            rmdir:   "/Library/Application Support/QNAP"
end
