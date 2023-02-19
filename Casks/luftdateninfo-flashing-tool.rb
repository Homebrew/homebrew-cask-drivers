cask "luftdateninfo-flashing-tool" do
  version "0.0.0"
  sha256 :no_check

  url "https://luftdaten.info/flashtool/luftdaten-tool.dmg"
  name "Luftdaten.info Flashing Tool"
  desc "Flashing tool for air quality sensors"
  homepage "https://luftdaten.info/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Luftdaten.info Flashing Tool.app"
end
