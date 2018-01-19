cask 'netgeargenie' do
  version '2.4.30(2017-12-1)'
  sha256 '7a4fb95e65e3db22ddf947a754ad9eac27d2cac8f9e755d00689d34fd4486087'

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
