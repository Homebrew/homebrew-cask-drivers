cask 'drobo-dashboard' do
  version '3.4.0,107363'
  sha256 '4a390109f9ffa3f40bfd25371ccef2d220ea299e4675250de75b4af4b22d5d58'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.before_comma}.dmg"
  name 'Drobo Dashboard'
  homepage 'https://www.drobo.com/'

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version.before_comma}_#{version.after_comma}.pkg"

  uninstall script:  {
                       executable: "#{staged_path}/Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh",
                       sudo:       true,
                     },
            pkgutil: 'com.datarobotics.droboDashboard*'
end
