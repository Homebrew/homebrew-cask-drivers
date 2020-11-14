cask "garmin-express" do
  version "7.1.0.0"
  sha256 "977711fe2ec7e5325cce2e3f4a02d1d88d40fed4f103ffdd9474c26dc9098cce"

  url "https://download.garmin.com/omt/express/GarminExpress.dmg"
  name "Garmin Express"
  homepage "https://www.garmin.com/en-US/software/express"

  pkg "Install Garmin Express.pkg"

  uninstall pkgutil: "com.garmin.renu.client"
end
