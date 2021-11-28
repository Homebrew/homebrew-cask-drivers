cask "yamaha-usb-midi-driver" do
  version "1.5.0"
  sha256 "77481dfeebe0de9df780245d365c6669f301e2cd24176d7bd705e5cdbdde95cf"

  url "https://usa.yamaha.com/files/download/software/8/1400138/um#{version.no_dots}mx.zip"
  name "Yamaha USB MIDI driver"
  desc "MIDI driver for Yamaha instruments"
  homepage "https://usa.yamaha.com/support/updates/usb_midi_driver_for_mac.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/USB-MIDI\sDriver\sV?(\d+(?:\.\d+)+)\sfor\sMac/i)
  end

  pkg "um#{version.no_dots}mx/Yamaha USB-MIDI Driver V#{version}.pkg"

  uninstall script:  {
    executable: "#{staged_path}/um#{version.no_dots}mx/Uninstall Yamaha USB-MIDI Driver.app/Contents/Resources/Scripts/delpkg.sh",
    sudo:       true,
  },
            pkgutil: [
              "jp.co.yamaha.USBMIDIDriver",
              "jp.co.yamaha.USBMIDIPatch",
            ]
end
