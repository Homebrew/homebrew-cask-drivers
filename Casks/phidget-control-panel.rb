cask "phidget-control-panel" do
  version "22,1.13.20230330"
  sha256 "6d4b0fb6fc03b7d633e6f362d0ef80fef93bdc8644936f7294ba28bc7854c442"

  url "https://www.phidgets.com/downloads/phidget#{version.csv.first}/libraries/macos/Phidget#{version.csv.first}/Phidget#{version.csv.first}_#{version.csv.second}.dmg"
  name "Phidget Control Panel"
  desc "Libraries and control software for the Phidgets sensing kits"
  homepage "https://www.phidgets.com/"

  livecheck do
    url "https://www.phidgets.com/downloads/phidget#{version.csv.first}/libraries/macos/Phidget#{version.csv.first}.dmg"
    regex(%r{/Phidget(\d+)_(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "Phidgets.pkg"

  uninstall pkgutil: [
              "com.phidgets.controlpanel#{version.csv.first}",
              "com.phidgets.phidget#{version.csv.first}extra",
              "com.phidgets.phidget#{version.csv.first}java",
              "com.phidgets.phidget#{version.csv.first}networkserver",
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
