cask "qnap-external-raid-manager" do
  version "1.3.5.0428"
  sha256 "1fb99a5ae0bb1ec277a33297872ceda23293026f28a63cc014d2cf32b155e774"

  url "https://download.qnap.com/Storage/Utility/QNAPExternalRAIDManagerMac-#{version}.dmg"
  name "QNAP External Raid Manager"
  desc "Set up, monitor, and view the status of your QNAP external RAID devices"
  homepage "https://www.qnap.com/en/utilities/essentials"

  livecheck do
    url :homepage
    regex(%r{href=.*?/QNAPExternalRAIDManagerMac-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "QNAP External RAID Manager.pkg"

  uninstall quit:    "com.qnap.raidmanager",
            pkgutil: "com.qnap.raidmanager",
            delete:  "/Library/Application Support/QNAP/QNAP External RAID Manager",
            rmdir:   "/Library/Application Support/QNAP"
end
