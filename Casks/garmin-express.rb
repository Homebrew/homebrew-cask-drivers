cask "garmin-express" do
  version "7.9.0.0,7090000"
  sha256 :no_check

  url "https://download.garmin.com/omt/express/GarminExpress.dmg"
  name "Garmin Express"
  desc "Update maps and software, sync with Garmin Connect and register your device"
  homepage "https://www.garmin.com/en-US/software/express"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Install Garmin Express.pkg"

  uninstall pkgutil: "com.garmin.renu.client"

  zap trash: [
    "~/Library/Application Support/Garmin/Express",
    "~/Library/Caches/com.garmin.renu.client",
    "~/Library/Caches/com.garmin.renu.service",
    "~/Library/Caches/com.garmin.renu.service.crashreporter",
    "~/Library/Preferences/com.garmin.renu*",
  ]
end
