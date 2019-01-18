cask 'netgeargenie' do
  version '2.4.40(2018-12-14)'
  sha256 'eca8915c6a792f85b00786fc303c8f91a7809ccfa2ba72212417fff9243517b1'

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
