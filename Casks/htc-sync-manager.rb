cask "htc-sync-manager" do
  version "3.1.140"
  sha256 "28c6ab9b991c3273aadae34716111b10c6a8431150afabdc13647a7ce9e2d76f"

  url "https://dl4.htc.com/download/htc-sync-manager/setup_#{version}_htc.dmg"
  name "HTC Sync Manager"
  homepage "https://www.htc.com/us/software/htc-sync-manager/"

  app "HTC Sync Manager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.htc.htc-sync-manager.sfl*",
    "~/Library/Application Support/HTC Sync Manager",
    "~/Library/Application Support/HTC_DeviceImage",
    "~/Library/Application Support/HTC_FOTA",
    "~/Library/Caches/com.htc.HTC-Sync-Manager",
    "~/Library/Preferences/com.htc.HTC-Sync-Manager.plist",
  ]
end
