cask 'evoluent-vertical-mouse-device-controller' do
  version '1.4.1'
  sha256 '8316bb923d6553b0d383d4aee8a64b53196a9914ee17318e0fc769806ace03d5'

  url "https://evoluent.com/download/Evoluent%20VerticalMouse%20Device%20Controller%20-%20#{version}.pkg"
  name 'Evoluent Vertical Mouse Device Controller'
  homepage 'https://evoluent.com/'

  pkg 'Evoluent VerticalMouse Device Controller.pkg'

  uninstall launchctl: 'com.evoluent.agent',
            pkgutil:   'com.evoluent.pkg.Installer'
end
