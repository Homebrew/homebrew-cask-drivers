cask "synology-cloud-station-backup" do
  version "4.3.3,4469"
  sha256 "1759be61a09cacd976969f71b0c0f12f34684976de6ad98323c512aec8f3399d"

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-cloud-station-backup-#{version.after_comma}.dmg"
  name "Synology Cloud Station Backup"
  desc "Back up files to a centralized Synology NAS"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/CloudStationBackup"
    strategy :page_match do |page|
      match = page.match(/Version:\s*(\d+(?:\.\d+)*)-(\d+)/i)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  pkg "Install Cloud Station Backup.pkg"

  uninstall quit:      [
    "com.synology.CloudStationBackup",
    "com.synology.CloudStationBackupUI",
  ],
            pkgutil:   [
              "com.synology.CloudStationBackup",
              "com.synology.CloudStationBackupUI",
            ],
            launchctl: "com.synology.Synology Cloud Station Backup"

  zap trash: "~/Library/Preferences/com.synology.CloudStationBackupUI.plist"
end
