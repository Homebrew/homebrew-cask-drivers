cask 'renault-r-link-2-toolbox' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  # rcs-rlmanager.aw.atos.net was verified as official when first introduced to the cask
  url 'https://rcs-rlmanager.aw.atos.net/archives/mac/RLink2Toolbox-latest.dmg'
  name 'R-Link 2 Toolbox'
  homepage 'https://www.renault-multimedia.com/gbr_EN/estore'

  app 'R-Link 2 Toolbox.app'

  uninstall quit: 'net.awl.appshop.renault.launcher'

  zap trash: [
               '~/Library/Application Support/R-Link 2 Toolbox',
               '~/Library/LaunchAgents/com.renault.rlink2toolbox.plist',
               '~/Library/Saved Application State/net.awl.appshop.renault.launcher.savedState',
             ]
end
