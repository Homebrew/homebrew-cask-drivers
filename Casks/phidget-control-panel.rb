cask "phidget-control-panel" do
  version "22"

  if MacOS.version <= :snow_leopard # 10.5 -- 10.6
    target = "_OS_X_10_5"
    sha256 ""
  elsif MacOS.version <= :yosemite # 10.7 -- 10.10
    target = "_OS_X_10_7"
    sha256 "2381e59c226ff1ed691462d6ab8ca87cd58ebd2ee82ac9b06b814a769dbcae3d"
  else
    target = ""
    sha256 "9cf21d515e96413c05ac9b630a2e2cec42c30fbf798c3b54a040f4542a6a4d3b"
  end

  url "https://www.phidgets.com/downloads/phidget#{version}/libraries/macos/Phidget#{version}#{target}.dmg"
  name "Phidget Control Panel"
  desc "Libraries and control software for the Phidgets sensing kits"
  homepage "https://www.phidgets.com/"

  pkg "Phidgets.pkg"

  uninstall pkgutil: [
    "com.phidgets.phidget22java",
    "com.phidgets.phidget22extra",
    "com.phidgets.phidget22networkserver",
    "com.phidgets.controlpanel22",
    "com.phidgets.phidgetframework22",
    "com.phidgets.signeddriver",
  ], kext: [
    "com.phidgets.driver.Phidget",
  ]

  # A reboot _seems_ to be needed for the driver to be fully functional (device
  # detected, but sensors unreadable otherwise)
  caveats do
    reboot
  end
end
