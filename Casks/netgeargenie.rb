cask 'netgeargenie' do
  version '2.4.34' # (2018-4-09)
  sha256 'd83b66fedb932d94886f74df01736fe57f2f1fc99927381d0d3deae1f1d8e545'

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
