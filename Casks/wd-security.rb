cask 'wd-security' do
  version '2.1.1.61'
  sha256 'b6744537b81a4bfb27c23413e457ddf74864220734a59a0df5ee0e48d90de8f5'

  url "http://downloads.wdc.com/wdapp/WD_Security_Standalone_Installer_Mac_#{version.dots_to_underscores}.zip"
  name 'WD Security'
  homepage 'https://www.wdc.com/'

  app 'WD Security Installer.app'
end
