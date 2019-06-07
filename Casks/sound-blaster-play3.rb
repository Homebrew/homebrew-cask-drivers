cask 'sound-blaster-play3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.00.03'
  sha256 '0550328b70fc214fcffc418fba3e5140c853e827bc92227a73864d62ba5e8415'

  url "https://files.creative.com/manualdn/Drivers/AVP/13795/0x3F213863/SBP3_MAC_L13_#{version.dots_to_underscores}.dmg.zip"
  name 'Sound Blaster Play! 3 Control Panel'
  homepage 'https://us.creative.com/p/sound-cards/sound-blaster-play-3'

  depends_on macos: '>= :mavericks'

  pkg 'Install.pkg'

  uninstall pkgutil: [
                       'com.creative.Sound Blaster Play! 3.AudioControlPanel.pkg',
                       'com.creative.Creative USB Audio Driver.TruStdPlugin109.pkg',
                       'com.creative.Creative Uninstaller.pkg',
                       'com.creative.Creative Product Registration.pkg',
                     ]

  caveats do
    reboot
  end
end
