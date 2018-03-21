cask 'drobo-dashboard' do
  version '3.1.6'
  sha256 '7dc77cfe7d227e0021cf0c2cf1f08ea33d46ca81ed29739bbb1d19414f4e4783'

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
