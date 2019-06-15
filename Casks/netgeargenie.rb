cask 'netgeargenie' do
  version '2.4.42'
  sha256 'c11c659e550cec0e4bdabfc03d9fed49ab9a92be14ee40e47119e291ba260699'

  url 'http://updates1.netgear.com/netgeargenie/mac/update/NETGEARGenieInstaller.dmg'
  name 'NETGEARGenie'
  homepage 'https://www.netgear.com/home/discover/apps/genie.aspx'

  pkg "NETGEAR_Genie_Installer_#{version}.pkg"

  uninstall quit:    'com.yourcompany.NETGEARGenie',
            pkgutil: 'com.netgear.netgearGenie.NETGEARGenie.pkg'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.netgeargenie.sfl*',
               '~/Library/Application Support/NETGEARGenie',
               '~/Library/Saved Application State/com.yourcompany.NETGEARGenie.savedState',
             ]
end
