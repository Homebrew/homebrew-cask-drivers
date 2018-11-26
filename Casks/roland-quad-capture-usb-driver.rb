cask 'roland-quad-capture-usb-driver' do
  if MacOS.version <= :yosemite
    version '1.5.2,10:24c21855-3c40-469c-a40c-7647a52bf022'
    sha256 'da575f4b3874e0042fddffb4462f4521019ceaa3f44942f64bce099b426cf2d1'
    url "https://static.roland.com/assets/media/tgz/quad_mx#{version.after_comma.before_colon}d#{version.before_comma.no_dots}.tgz"
  elsif MacOS.version <= :sierra
    version '1.5.3,12:199aee04-dd6b-4a9c-9945-ba9ffb295113'
    sha256 '712b27a25275d748e35c174b242f21a2967f5caca013f6cb09330b9232288770'
    url "https://static.roland.com/assets/media/tgz/quad_m#{version.after_comma.before_colon}d#{version.before_comma.no_dots}.tgz"
  else
    version '1.5.4,13:53d8a307-a8ae-4f9b-9a59-a1adb8c67012'
    sha256 'd3524d7844d24805c3a1c25c09dce62ab87d4c8dd6941a0b1d3653c696563117'
    url "https://static.roland.com/assets/media/tgz/quad_m#{version.after_comma.before_colon}d#{version.before_comma.no_dots}.tgz"
  end

  name 'Roland Quad-Capture USB Driver'
  homepage 'https://www.roland.com/us/support/by_product/quad-capture/updates_drivers/'

  depends_on macos: '>= :yosemite'

  pkg "QuadCaptureUSBDriver/QuadCapture_USBDriver10#{version.after_comma.before_colon}.pkg"

  uninstall pkgutil:   'jp.co.roland.QuadCapture.*',
            launchctl: [
                         'jp.co.roland.RDUSB0000Setupd',
                         'jp.co.roland.RDUSB012FSetupd',
                       ],
            quit:      'QUAD-CAPTURE Control Panel',
            kext:      [
                         'jp.co.roland.RDUSB0000Dev',
                         'jp.co.roland.RDUSB012FDev',
                       ],
            script:    [
                         executable: "#{staged_path}/QuadCaptureUSBDriver/Uninstaller.app/Contents/Resources/Script",
                         sudo:       true,
                       ],
            delete:    [
                         '~/Library/Preferences/jp.co.roland.RDUSB012F.cpl.plist',
                         '/Applications/QUAD-CAPTURE Control Panel.app',
                         '/Applications/Roland/QUAD-CAPTURE Driver',
                         '/Library/Audio/MIDI Drivers/RDUSB0000Midi.plugin',
                         '/Library/Audio/MIDI Drivers/RDUSB012FMidi.plugin',
                         '/Library/Application Support/RolandDrv',
                         '/Library/Preferences/jp_co_roland_RDUSB0000Dev.pref.plist',
                         '/Library/Preferences/jp_co_roland_RDUSB012FDev.pref.plist',
                         '/Library/PreferencePanes/RDUSB012FPref.prefPane',
                         '/Library/PreferencePanes/RDUSB0000Pref.prefPane',
                         '/Library/StartupItems/RDUSB012FStartup',
                         '/Library/StartupItems/RDUSB0000Startup',
                       ]

  caveats do
    license "https://www.roland.com/us/support/by_product/quad-capture/updates_drivers/#{version.after_colon}/"
    reboot
  end
end
