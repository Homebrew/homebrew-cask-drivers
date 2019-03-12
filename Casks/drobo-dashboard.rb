cask 'drobo-dashboard' do
  version '3.4.2,109477'
  sha256 '97024146ac4e25c8236762089c1a860d63b3152704a7f8e00893321dea207b34'

  url "https://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.before_comma}.dmg"
  name 'Drobo Dashboard'
  homepage 'https://www.drobo.com/'

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version.before_comma}_#{version.after_comma}.pkg"

  uninstall script:  {
                       executable: "#{staged_path}/Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh",
                       sudo:       true,
                     },
            pkgutil: 'com.datarobotics.droboDashboard*'
end
