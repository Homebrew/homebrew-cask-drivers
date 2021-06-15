cask "ricoh-ps-printers-vol3-exp-driver" do
  version "3.9.0.0"
  sha256 "2a092e94f8abb664fb9fd1512135a53d0ff44ba9d0bcea89a364aebffda936a2"

  url "https://support.ricoh.com/bb/pub_e/dr_ut_e/0001316/0001316460/V#{version.delete(".")}/Ricoh_PS_Printers_Vol3_EXP_LIO_#{version}.dmg"
  name "Ricoh PS printers Vol 3 EXP driver"
  homepage "https://support.ricoh.com/bb/html/dr_ut_e/apc/model/mpc2011/mpc2011.htm"

  livecheck do
    url "https://support.ricoh.com/bb/html/dr_ut_e/apc/model/mpc2011/mpc2011en.htm"
    regex(/href=.*Ricoh_PS_Printers_Vol3_EXP_LIO_(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "Ricoh_PS_Printers_Vol3_EXP_LIO_Driver.pkg"

  uninstall pkgutil: [
    "com.RICOH.print.PS_Printers_Vol3_EXP.ICCs.pkg",
    "com.RICOH.print.PS_Printers_Vol3_EXP.icons.pkg",
    "com.RICOH.print.PS_Printers_Vol3_EXP.ppds.pkg",
    "ricoh.autosetuptool.pkg",
    "ricoh.commandfilter.pkg",
    "ricoh.copycontrol.pkg",
    "ricoh.cupsfilter.pkg",
    "ricoh.gencupsfilter.pkg",
    "ricoh.genjoblog.pkg",
    "ricoh.genuserAuthentication.pkg",
    "ricoh.joblog.pkg",
    "ricoh.userAuthentication.pkg",
  ]
end
