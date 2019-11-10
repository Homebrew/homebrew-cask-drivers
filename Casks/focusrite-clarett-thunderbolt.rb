cask 'focusrite-clarett-thunderbolt' do
  version '4.6.2'
  sha256 '2a56dff7bc57a430084575fde1f28a4981b16525950a6b30130eca154f9dcfe7'

  url "https://customer.focusrite.com/sites/customer/files/downloads/ClarettThunderboltDriver-#{version}.dmg"
  appcast 'https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=545&download_type=software'
  name 'Focusrite Clarett Thunderbolt'
  homepage 'https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=545'

  pkg 'FocusritePCIe-4.6.2.768.pkg'

  uninstall pkgutil: [
                       'com.focusrite.pkg.FocusritePCIe.audio_driver',
                       'com.focusrite.pkg.FocusritePCIe.midi_driver',
                     ]
end
