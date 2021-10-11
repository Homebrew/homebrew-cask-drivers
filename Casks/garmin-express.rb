cask "garmin-express" do
  version :latest
  sha256 :no_check

  url "https://download.garmin.com/omt/express/GarminExpress.dmg"
  name "Garmin Express"
  desc "Update maps and software, sync with Garmin Connect and register your device"
  homepage "https://www.garmin.com/en-US/software/express"

  pkg "Install Garmin Express.pkg"

  uninstall pkgutil: "com.garmin.renu.client"

  zap trash: [
    "~/Library/Preferences/com.garmin.renu*",
    "~/Library/Application Support/Garmin/Express",
    "~/Library/Caches/com.garmin.renu.client",
    "~/Library/Caches/com.garmin.renu.service.crashreporter",
    "~/Library/Caches/com.garmin.renu.service",
  ]
end
