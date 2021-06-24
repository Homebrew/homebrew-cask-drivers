cask "xbox360-controller-driver-unofficial" do
  version "0.16.11"
  sha256 "540c995554462af788f89e9bfa82e2fa3e6d1ff523dc2cbb7aa52415ecd3134f"

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}/360ControllerInstall_#{version}.dmg"
  name "TattieBogle Xbox 360 Controller Driver (with improvements)"
  desc "Drivers for the Microsoft Xbox series of controllers"
  homepage "https://github.com/360Controller/360Controller"

  depends_on macos: ">= :el_capitan"

  pkg "Install360Controller.pkg"

  uninstall launchctl: "com.mice.360Daemon",
            quit:      "com.mice.-60Daemon", # '-60' is not a typo.
            kext:      [
              "com.mice.Xbox360ControllerForceFeedback",
              "com.mice.driver.Xbox360Controller",
              "com.mice.driver.Wireless360Controller",
              "com.mice.driver.WirelessGamingReceiver",
            ],
            pkgutil:   "com.mice.pkg.Xbox360controller",
            # Symlink to kext in /Library/Extensions is not removed
            # during :pkgutil phase of uninstall, so we delete it here.
            delete:    "/System/Library/Extensions/360Controller.kext"

  caveats do
    reboot
  end
end
