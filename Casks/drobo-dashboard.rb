cask 'drobo-dashboard' do
  version '3.1.5_96773'
  sha256 'e128985988c12a163846a0d010f5c0e08f00c20d744576de25344a2426868a54'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*}, '')}.dmg"
  name 'Drobo Dashboard'
  homepage 'http://www.drobo.com/'

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall script:  {
                       executable: 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
                       sudo:       true,
                     },
            pkgutil: 'com.datarobotics.droboDashboard*'
end
