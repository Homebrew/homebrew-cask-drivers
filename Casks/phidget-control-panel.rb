cask "phidget-control-panel" do
  version "22,1.10.20220211"
  sha256 "584dcfe478525e1a1dce101f9b7707e899045b441beabe687ca239d7a4f28cfa"

  url "https://www.phidgets.com/downloads/phidget#{version.csv.first}/libraries/macos/Phidget#{version.csv.first}/Phidget#{version.csv.first}_#{version.csv.second}.dmg"
  name "Phidget Control Panel"
  desc "Libraries and control software for the Phidgets sensing kits"
  homepage "https://www.phidgets.com/"

  livecheck do
    url "https://www.phidgets.com/downloads/phidget#{version.csv.first}/libraries/macos/Phidget#{version.csv.first}.dmg"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Phidget(\d+)_(\d+(?:\.\d+)+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "Phidgets.pkg"

  uninstall pkgutil: [
    "com.phidgets.phidget#{version.csv.first}java",
    "com.phidgets.phidget#{version.csv.first}extra",
    "com.phidgets.phidget#{version.csv.first}networkserver",
    "com.phidgets.controlpanel#{version.csv.first}",
    "com.phidgets.phidgetframework#{version.csv.first}",
    "com.phidgets.signeddriver",
  ],
            kext:    "com.phidgets.driver.Phidget"

  # A reboot _seems_ to be needed for the driver to be fully functional
  # (device detected, but sensors unreadable otherwise)
  caveats do
    reboot
  end
end
