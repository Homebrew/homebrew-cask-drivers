cask 'drobo-dashboard' do
  version '3.1.4_94689'
  sha256 'b6e7df70372c6d3b63d7f92f5c97f4cd6d9b6219485a540ac0db53a0d30ea515'

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
