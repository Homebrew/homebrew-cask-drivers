cask "roland-quad-capture-usb-driver" do
  if MacOS.version <= :yosemite
    version "1.5.2,10"
    sha256 "da575f4b3874e0042fddffb4462f4521019ceaa3f44942f64bce099b426cf2d1"
    url "https://static.roland.com/assets/media/tgz/quad_mx#{version.after_comma}d#{version.before_comma.no_dots}.tgz"

    pkg "QuadCaptureUSBDriver/QuadCapture_USBDriver10#{version.after_comma}.pkg"
  elsif MacOS.version <= :sierra
    version "1.5.3,12"
    sha256 "712b27a25275d748e35c174b242f21a2967f5caca013f6cb09330b9232288770"
    url "https://static.roland.com/assets/media/tgz/quad_m#{version.after_comma}d#{version.before_comma.no_dots}.tgz"

    pkg "QuadCaptureUSBDriver/QuadCapture_USBDriver10#{version.after_comma}.pkg"
  elsif MacOS.version <= :mojave
    version "1.5.4,13"
    sha256 "d3524d7844d24805c3a1c25c09dce62ab87d4c8dd6941a0b1d3653c696563117"
    url "https://static.roland.com/assets/media/tgz/quad_m#{version.after_comma}d#{version.before_comma.no_dots}.tgz"

    pkg "QuadCaptureUSBDriver/QuadCapture_USBDriver10#{version.after_comma}.pkg"
  elsif MacOS.version <= :catalina
    version "1.5.5,15"
    sha256 "fce600fdbd50b50d69a676700ef42ee038db50d201874dadf3c0e1ac291df23f"
    url "https://static.roland.com/assets/media/tgz/quad_m#{version.after_comma}d#{version.before_comma.no_dots}.tgz"

    pkg "QuadCaptureUSBDriver/QuadCapture_USBDriver10#{version.after_comma}.pkg"
  else
    version "1.5.6,11"
    sha256 "0d77926e818e1da93ea2f980ef29d840015f085ec134a68a2501b1ccfd5ddfde"
    url "https://static.roland.com/assets/media/tgz/quad_mac#{version.after_comma}drv#{version.before_comma.no_dots}.tgz"

    pkg "QuadCaptureUSBDriver/QuadCapture_USBDriver#{version.after_comma}.pkg"
  end

  appcast "https://www.roland.com/us/support/by_product/quad-capture/updates_drivers"
  name "Roland Quad-Capture USB Driver"
  homepage "https://www.roland.com/us/products/quad-capture/"

  depends_on macos: ">= :yosemite"

  uninstall pkgutil:   "jp.co.roland.QuadCapture.*",
            launchctl: [
              "jp.co.roland.RDUSB0000Setupd",
              "jp.co.roland.RDUSB012FSetupd",
            ],
            quit:      "QUAD-CAPTURE Control Panel",
            kext:      [
              "jp.co.roland.RDUSB0000Dev",
              "jp.co.roland.RDUSB012FDev",
            ],
            script:    [
              { executable: "#{staged_path}/QuadCaptureUSBDriver/Uninstaller.app/Contents/Resources/Script",
                sudo:       true },
            ],
            delete:    [
              "/Applications/QUAD-CAPTURE Control Panel.app",
              "/Applications/Roland/QUAD-CAPTURE Driver",
              "/Library/Audio/MIDI Drivers/RDUSB0000Midi.plugin",
              "/Library/Audio/MIDI Drivers/RDUSB012FMidi.plugin",
              "/Library/Application Support/RolandDrv",
              "/Library/StartupItems/RDUSB0000Startup",
              "/Library/StartupItems/RDUSB012FStartup",
            ],
            rmdir:     "/Applications/Roland"

  zap trash: [
    "/Library/PreferencePanes/RDUSB0000Pref.prefPane",
    "/Library/PreferencePanes/RDUSB012FPref.prefPane",
    "/Library/Preferences/jp_co_roland_RDUSB0000Dev.pref.plist",
    "/Library/Preferences/jp_co_roland_RDUSB012FDev.pref.plist",
    "~/Library/Preferences/jp.co.roland.RDUSB012F.cpl.plist",
    "~/Library/Saved Application State/jp.co.roland.RDUSB012F.Uninstaller.savedState",
  ]

  caveats do
    license "https://www.roland.com/us/support/by_product/quad-capture/updates_drivers/#{version.csv.third}"
    reboot
  end
end
