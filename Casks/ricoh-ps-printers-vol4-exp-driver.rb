cask 'ricoh-ps-printers-vol4-exp-driver' do
  version '3.9.0.0'
  sha256 '8a5219f3915a55de66ee04e489ecf54e9c2f370b16d0083b5b7451f27504f8b9'

  url "http://support.ricoh.com/bb/pub_e/dr_ut_e/0001316/0001316696/V#{version.delete('.')}/Ricoh_PS_Printers_Vol4_EXP_LIO_#{version}.dmg"
  name 'Ricoh PS printers Vol 4 EXP driver'
  homepage 'http://support.ricoh.com/bb/html/dr_ut_e/rc3/model/mpc3004ex/mpc3004ex.htm'

  pkg 'Ricoh_PS_Printers_Vol4_EXP_LIO_Driver.pkg'

  uninstall pkgutil: [
                       'RICOH.balanceadjustment.pkg',
                       'RICOH.synchrocut.pkg',
                       'com.RICOH.print.PS_Printers_Vol4_EXP.ICCs.pkg',
                       'com.RICOH.print.PS_Printers_Vol4_EXP.icons.pkg',
                       'com.RICOH.print.PS_Printers_Vol4_EXP.ppds.pkg',
                       'ricoh.autosetuptool.pkg',
                       'ricoh.backgroundnumbering.pkg',
                       'ricoh.commandfilter.pkg',
                       'ricoh.copycontrol.pkg',
                       'ricoh.cupsfilter.pkg',
                       'ricoh.joblog.pkg',
                       'ricoh.userAuthentication.pkg',
                     ]
end
