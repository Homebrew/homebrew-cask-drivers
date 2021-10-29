cask "qnap-external-raid-manager" do
  version "1.3.4.0917"
  sha256 "c1062755f2bb14418589910c1675fc1df523a7f7cf85e5cd48a14a095439f583"

  url "https://download.qnap.com/Storage/Utility/QNAPExternalRAIDManagerMac-#{version}.dmg"
  name "QNAP External Raid Manager"
  desc "Set up, monitor, and view the status of your QNAP external RAID devices"
  homepage "https://www.qnap.com/en/utilities/essentials"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/QNAPExternalRAIDManagerMac-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "QNAP External RAID Manager.pkg"

  uninstall quit:    "com.qnap.raidmanager",
            pkgutil: "com.qnap.raidmanager",
            delete:  "/Library/Application Support/QNAP/QNAP External RAID Manager",
            rmdir:   "/Library/Application Support/QNAP"
end
