cask 'brother-ql720nw-wireless-setup-wizard' do
  version '1.0.2'
  sha256 '7436a3679ea6eb8300b1213ab2cd4d197a31ce9cf551015e96737f599fa0e997'

  url "https://download.brother.com/welcome/dlfp100147/brotherwdsw_ql720nw_#{version.no_dots}.dmg"
  name 'Brother QL-720NW Wireless Setup Wizard'
  homepage 'https://support.brother.com/g/b/producttop.aspx?c=us_ot&lang=en&prod=lpql720nweus'

  app 'Utilities/SetupWizard.app', target: 'Brother QL-720NW Wireless Setup Wizard.app'
end
