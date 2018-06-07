cask 'r-link2-toolbox' do
  version :latest
  sha256 :no_check

  # rcs-rlmanager.aw.atos.net was verified as official when first introduced to the cask
  url 'https://rcs-rlmanager.aw.atos.net/archives/mac/RLink2Toolbox-latest.dmg'
  name 'R-Link 2 Toolbox'
  homepage 'https://www.renault-multimedia.com/gbr_EN/estore'

  app 'R-Link 2 Toolbox.app'
end
