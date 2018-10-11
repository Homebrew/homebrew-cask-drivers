cask 'drobo-dashboard' do
  version '3.3.0_104675'
  sha256 '59342b990125d018681167958991072d88e92d79df7c2b187b7eb3fcdaaa3b0e'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*}, '')}.dmg"
  name 'Drobo Dashboard'
  homepage 'https://www.drobo.com/'

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall script:  {
                       executable: 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
                       sudo:       true,
                     },
            pkgutil: 'com.datarobotics.droboDashboard*'
end
