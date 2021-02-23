cask "phidget-control-panel" do
  version "22"
  sha256 "9cf21d515e96413c05ac9b630a2e2cec42c30fbf798c3b54a040f4542a6a4d3b"

  url "https://www.phidgets.com/downloads/phidget#{version}/libraries/macos/Phidget#{version}.dmg"
  name "Phidget Control Panel"
  desc "Libraries and control software for the Phidgets sensing kits"
  homepage "https://www.phidgets.com/"

  depends_on macos: ">= :el_capitan"

  pkg "Phidgets.pkg"

  uninstall pkgutil: [
    "com.phidgets.phidget#{version}java",
    "com.phidgets.phidget#{version}extra",
    "com.phidgets.phidget#{version}networkserver",
    "com.phidgets.controlpanel#{version}",
    "com.phidgets.phidgetframework#{version}",
    "com.phidgets.signeddriver",
  ],
            kext:    [
              "com.phidgets.driver.Phidget",
            ]

  # A reboot _seems_ to be needed for the driver to be fully functional
  # (device detected, but sensors unreadable otherwise)
  caveats do
    reboot
  end
end
