cask 'focusrite-control' do
  version '2.3.4,32453'
  sha256 '03540de1770e8f6f04754e707b95d3535e477ab86f2175b3eb962e6687e27996'

  # d2zjg0qo565n2.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2zjg0qo565n2.cloudfront.net/sites/default/files/focusrite/downloads/#{version.after_comma}/focusrite-control-#{version.before_comma}.dmg"
  name 'Focusrite Control'
  homepage 'https://us.focusrite.com/downloads?product=Scarlett+18i8'

  pkg 'Focusrite Control.pkg'

  uninstall pkgutil: [
                       'com.focusrite.FocusriteControl',
                       'com.focusrite.pkg.FocusritePCIe.audio_driver',
                       'com.focusrite.pkg.FocusritePCIe.midi_driver',
                     ]
end
