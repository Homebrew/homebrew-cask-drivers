cask 'ricoh-ps-printers-vol3-exp-driver' do
  version '3.4.0.0'
  sha256 '283e4e27e6544ea6c21d1c9c8523636114c72bb70460ef652cf0765cd0c3756d'

  url "https://support.ricoh.com/bb/pub_e/dr_ut_e/0001310/0001310159/V#{version.delete('.')}/Ricoh_PS_Printers_Vol3_EXP_LIO_#{version}.dmg"
  name 'Ricoh PS printers Vol 3 EXP driver'
  homepage 'https://support.ricoh.com/bb/html/dr_ut_e/apc/model/mpc2011/mpc2011.htm'

  pkg 'Ricoh_PS_Printers_Vol3_EXP_LIO_Driver.pkg'

  uninstall pkgutil: [
                       'com.RICOH.print.PS_Printers_Vol3_EXP.ICCs.pkg',
                       'com.RICOH.print.PS_Printers_Vol3_EXP.icons.pkg',
                       'com.RICOH.print.PS_Printers_Vol3_EXP.ppds.pkg',
                       'ricoh.autosetuptool.pkg',
                       'ricoh.commandfilter.pkg',
                       'ricoh.copycontrol.pkg',
                       'ricoh.cupsfilter.pkg',
                       'ricoh.joblog.pkg',
                     ]
end
