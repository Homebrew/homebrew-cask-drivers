cask "fender-fuse" do
  version "2.7.1"
  sha256 "e68de1a1c1068d34dda354e2678ddac4a796b2ccdface95b034a438455442919"

  url "https://www.fmicassets.com/fender/support/software/fender_software/fender_fuse/mac/FenderFUSE_FULL_#{version}.dmg",
      verified: "fmicassets.com/fender/"
  name "Fender FUSE"
  homepage "https://fuse.fender.com/"

  pkg "Fender FUSE Installer.app/Contents/Resources/Fender FUSE.pkg"
  pkg "Fender FUSE Installer.app/Contents/Resources/Fender Firmware Updater Installer.pkg"

  uninstall quit:    [
    "FenderFUSE",
    "Fender Firmware Updater",
  ],
            pkgutil: [
              "com.Fender.pkg.FenderFUSE",
              "com.Fender.pkg.FenderAmpDrivers",
              "com.Fender.pkg.FenderFirmwareUpdater",
              "com.microsoft.SilverlightInstaller",
              "com.ximian.mono",
            ],
            delete:  "/Applications/Fender FUSE.app"

  zap trash: "~/Library/Application Support/Microsoft/Silverlight/OutOfBrowser/*.localhost"

  caveats do
    discontinued
  end
end
