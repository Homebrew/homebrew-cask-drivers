cask 'focusrite-control' do
  version '3.4.0'
  sha256 '4b9dc150e594c3fcd593b9a8da677f5aa72f89ae6d1eeb0fc32c4ce3e1f3b38a'

  url "https://customer.focusrite.com/sites/customer/files/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  appcast 'https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software'
  name 'Focusrite Control'
  homepage 'https://us.focusrite.com/downloads?product=Scarlett+18i8'

  pkg 'Focusrite Control.pkg'

  uninstall pkgutil:   [
                         'com.focusrite.FocusriteControl',
                         'com.focusrite.pkg.FocusritePCIe.audio_driver',
                         'com.focusrite.pkg.FocusritePCIe.midi_driver',
                       ],
            launchctl: 'com.focusrite.ControlServer'
end
