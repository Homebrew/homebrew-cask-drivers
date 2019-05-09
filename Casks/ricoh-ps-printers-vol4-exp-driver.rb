cask 'ricoh-ps-printers-vol4-exp-driver' do
  version '3.6.0.0'
  sha256 '269d997c6efad95453314517034d4d5339091cc33f42b1ee2ace2795b89e76df'

  url "http://support.ricoh.com/bb/pub_e/dr_ut_e/0001310/0001310123/V#{version.delete('.')}/Ricoh_PS_Printers_Vol4_EXP_LIO_#{version}.dmg"
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
                     ]
end
