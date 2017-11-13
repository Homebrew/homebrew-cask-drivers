cask 'netgeargenie' do
  version '2.4.26(2017-9-27)'
  sha256 '41e360d92a61502aa9ea575356153d637d2a96ded0b190004d0493f1601245db'

  url 'http://updates1.netgear.com/netgeargenie/mac/update/NETGEARGenieInstaller.dmg'
  name 'NETGEARGenie'
  homepage 'https://www.netgear.com/home/discover/apps/genie.aspx'

  pkg "NETGEAR_Genie_Installer_#{version}.pkg"

  uninstall quit:    'com.yourcompany.NETGEARGenie',
            pkgutil: 'com.netgear.netgearGenie.NETGEARGenie.pkg'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.netgeargenie.sfl*',
                '~/Library/Application Support/NETGEARGenie',
                '~/Library/Saved Application State/com.yourcompany.NETGEARGenie.savedState',
              ]
end
