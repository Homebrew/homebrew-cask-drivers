cask 'wd-security' do
  version '2.1.1.55'
  sha256 '28628a2011e92c59c3517aa2213134ee20443e1827a996275bae8ade595cd6b6'

  url "http://downloads.wdc.com/wdapp/WD_Security_Standalone_Installer_Mac_#{version.dots_to_underscores}.zip"
  name 'WD Security'
  homepage 'https://www.wdc.com/'

  app 'WD Security Installer.app'
end
