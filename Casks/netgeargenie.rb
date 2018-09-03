cask 'netgeargenie' do
  version '2.4.38(2018-8-9)'
  sha256 '45a917c8134cd2ef230c4b8e47726a03ea8eee0580cffeeadf65f70950b835e7'

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
