cask "sound-blaster-play3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  if MacOS.version <= :mojave
    version "2.00.03"
    sha256 "0550328b70fc214fcffc418fba3e5140c853e827bc92227a73864d62ba5e8415"

    url "https://files.creative.com/manualdn/Drivers/AVP/13795/0x3F213863/SBP3_MAC_L13_#{version.dots_to_underscores}.dmg.zip"
    pkg "Install.pkg"
  else
    version "2.01.02"
    sha256 "3dbbdc627f5ee72f87403dc471e6718c258594e0fb0b208d900a5f174ce02915"

    url "https://files.creative.com/manualdn/Drivers/100289/MqrOwTo9a7/SBP3_MAC_L13_#{version.dots_to_underscores}.dmg"
    pkg "INSTALL.pkg"
  end

  name "Sound Blaster PLAY! 3"
  desc "Driver and control panel for the Sound Blaster PLAY! 3 USB DAC and Amp"
  homepage "https://us.creative.com/p/sound-cards/sound-blaster-play-3"

  livecheck do
    url "https://support.creative.com/Products/ProductDetails.aspx?catID=1&subCatID=1258&prodID=23033"
    ext = '\.zip' if MacOS.version <= :mojave
    regex(/SBP3[._-]MAC[._-]L13[._-]?v?(\d+(?:[._]\d+)+)\.dmg#{ext}\s/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  uninstall launchctl: "com.creative.trustudiopc",
            pkgutil:   [
              "com.creative.Sound Blaster Play! 3.AudioControlPanel.pkg",
              "com.creative.Creative USB Audio Driver.TruStdPlugin109.pkg",
              "com.creative.Creative Uninstaller.pkg",
              "com.creative.Creative Product Registration.pkg",
              "com.Creative.Sound-Blaster-Play--3-Control-Panel",
              "com.creative.AudioDriver",
              "com.creative.Uninstaller",
            ]

  caveats do
    kext
  end
end
