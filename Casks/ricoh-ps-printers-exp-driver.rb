cask 'ricoh-ps-printers-exp-driver' do
  version '3.4.0.0'
  sha256 'ffd01b48ef1d3e0b86894eda316068b799178969075929544c7a832d50f9bf9a'

  url "http://support.ricoh.com/bb/pub_e/dr_ut_e/0001310/0001310123/V#{version.delete('.')}/Ricoh_PS_Printers_Vol4_EXP_LIO_#{version}.dmg"
  name 'Ricoh PS printers EXP driver'
  homepage 'http://support.ricoh.com/bb/html/dr_ut_e/apc/model/mpc2011/mpc2011.htm'

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
                     ]
end
