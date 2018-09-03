cask 'evoluent-vertical-mouse-device-controller' do
  version '1.3.0f1'
  sha256 'aacc74268954edfea38bf9d4704cb7987c84cbedcaa963bbb82413b35497c1ae'

  url "https://evoluent.com/download/EvoluentVerticalMouseDeviceController#{version}.dmg"
  name 'Evoluent Vertical Mouse Device Controller'
  homepage 'https://evoluent.com/'

  pkg 'Evoluent VerticalMouse Device Controller.pkg'

  uninstall launchctl: 'com.evoluent.agent',
            pkgutil:   'com.evoluent.pkg.Installer'
end
