cask 'focusrite-control' do
  version '3.2.1_0'
  sha256 '14c0ea0d2b27a34efd348509b704cc13d183f7ba7f427aea476eb372c05787bb'

  url "https://customer.focusrite.com/sites/customer/files/downloads/Focusrite%20Control-#{version}.dmg"
  appcast 'https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software'
  name 'Focusrite Control'
  homepage 'https://us.focusrite.com/downloads?product=Scarlett+18i8'

  pkg 'Focusrite Control.pkg'

  uninstall pkgutil: [
                       'com.focusrite.FocusriteControl',
                       'com.focusrite.pkg.FocusritePCIe.audio_driver',
                       'com.focusrite.pkg.FocusritePCIe.midi_driver',
                     ]
end
