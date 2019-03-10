cask 'drobo-dashboard' do
  version '3.4.1,108281'
  sha256 'c2b77fe5db23b4705c756a0311a41e62d537048daaa7dd45287985ee1f9aeb4b'

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
