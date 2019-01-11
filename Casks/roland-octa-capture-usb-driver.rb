cask 'roland-octa-capture-usb-driver' do
  if MacOS.version <= :yosemite
    version '1.5.2,10:e735f8cd-fbdb-4e30-9e9b-4aa86bb84ba8'
    sha256 '589c70e7aae284990d4b6d0ecd99f61bb69d5837d2fa1e20e6c7073df6f1bb9f'
    url "https://static.roland.com/assets/media/tgz/octa_mx#{version.after_comma.before_colon}d#{version.before_comma.no_dots}.tgz"
  elsif MacOS.version <= :sierra
    version '1.5.3,12:f83647c6-c214-430d-9efb-9ff7d13df4e5'
    sha256 '0aadd3297892a5a404c6ef6d522c2ff124bd4c06fabf49d56a7b92c47e219107'
    url "https://static.roland.com/assets/media/tgz/octa_m#{version.after_comma.before_colon}d#{version.before_comma.no_dots}.tgz"
  else
    version '1.5.4,13:d60c6bec-fe34-4343-af5d-1e72dd1b5f8a'
    sha256 'ad16ab8a0a51ae6f26bce5ad453147394706c9bb9aad4f426a2edf02079f11d5'
    url "https://static.roland.com/assets/media/tgz/octa_m#{version.after_comma.before_colon}d#{version.before_comma.no_dots}.tgz"
  end

  appcast 'https://www.roland.com/us/support/by_product/octa-capture/updates_drivers'
  name 'Roland Octa-Capture USB Driver'
  homepage 'https://www.roland.com/us/products/octa-capture/'

  depends_on macos: '>= :yosemite'

  pkg "OctaCaptureUSBDriver/OctaCapture_USBDriver10#{version.after_comma.before_colon}.pkg"

  uninstall pkgutil:   'jp.co.roland.OctaCapture.*',
            launchctl: [
                         'jp.co.roland.RDUSB0000Setupd',
                         'jp.co.roland.RDUSB0120Setupd',
                       ],
            quit:      'OCTA-CAPTURE Control Panel',
            kext:      [
                         'jp.co.roland.RDUSB0000Dev',
                         'jp.co.roland.RDUSB0120Dev',
                       ],
            script:    [
                         executable: "#{staged_path}/OctaCaptureUSBDriver/Uninstaller.app/Contents/Resources/Script",
                         sudo:       true,
                       ],
            delete:    [
                         '/Applications/OCTA-CAPTURE Control Panel.app',
                         '/Applications/Roland/OCTA-CAPTURE Driver',
                         '/Library/Audio/MIDI Drivers/RDUSB0000Midi.plugin',
                         '/Library/Audio/MIDI Drivers/RDUSB0120Midi.plugin',
                         '/Library/Application Support/RolandDrv',
                         '/Library/StartupItems/RDUSB0000Startup',
                         '/Library/StartupItems/RDUSB0120Startup',
                       ],
            rmdir:     '/Applications/Roland'

  zap trash: [
               '/Library/PreferencePanes/RDUSB0000Pref.prefPane',
               '/Library/PreferencePanes/RDUSB0120Pref.prefPane',
               '/Library/Preferences/jp_co_roland_RDUSB0000Dev.pref.plist',
               '/Library/Preferences/jp_co_roland_RDUSB0120Dev.pref.plist',
               '~/Library/Preferences/jp.co.roland.RDUSB0120.cpl.plist',
               '~/Library/Saved Application State/jp.co.roland.RDUSB0120.Uninstaller.savedState',
            ]

  caveats do
    license "https://www.roland.com/us/support/by_product/octa-capture/updates_drivers/#{version.after_colon}"
    reboot
  end
end
