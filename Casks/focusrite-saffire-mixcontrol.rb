cask 'focusrite-saffire-mixcontrol' do
  version '3.7,25075'
  sha256 'db3bef4df400dc31ac78c1ae68f18715d504cede481aff171812b01c59ba1f2e'

  url "https://customer.focusrite.com/sites/customer/files/focusrite/downloads/#{version.after_comma}/saffire-mixcontrol-#{version.before_comma}.dmg"
  name 'Focusrite Saffire MixControl'
  homepage 'https://focusrite.com/'

  pkg 'Saffire MixControl.pkg'

  uninstall launchctl: 'tc.tctechnologies.daemon.Saffire',
            quit:      'com.focusrite.SaffireMixControl2',
            kext:      'tc.tctechnologies.driver.Saffire',
            pkgutil:   [
                         'com.focusrite.SaffireInstall.pkg',
                         'tc.tctechnologies.pkg.Saffire.audio_driver',
                         'tc.tctechnologies.pkg.Saffire.midi_driver',
                       ]
end
