cask 'focusrite-control' do
  version '2.4.2'
  sha256 '6947d13533d591db0a8902ddee0f42e49ba73bf6819982a066be775bbcd54e08'

  url "https://customer.focusrite.com/sites/customer/files/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  name 'Focusrite Control'
  homepage 'https://us.focusrite.com/downloads?product=Scarlett+18i8'

  pkg 'Focusrite Control.pkg'

  uninstall pkgutil: [
                       'com.focusrite.FocusriteControl',
                       'com.focusrite.pkg.FocusritePCIe.audio_driver',
                       'com.focusrite.pkg.FocusritePCIe.midi_driver',
                     ]
end
