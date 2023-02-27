cask "phidget-control-panel" do
  version "22,1.13.20230224"
  sha256 "59ba3a96b0b3e81b55be55e822b4fe2109dfbe5d024eaebe3741a0852c3ef833"

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
