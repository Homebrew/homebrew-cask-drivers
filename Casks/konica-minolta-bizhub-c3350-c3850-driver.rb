cask 'konica-minolta-bizhub-c3350-c3850-driver' do
  version '3.2.0,201606-09064237'
  sha256 '3a8fac3b2050710b497a44db62fdc4da772285ce4dca65e621646b00331b2dfd'

  # konicaminolta.com was verified as official when first introduced to the cask
  url "https://o.cses.konicaminolta.com/file/Default.aspx?FilePath=DL/#{version.after_comma.hyphens_to_slashes}/BHC3850PSMacOS109_#{version.before_comma.no_dots}MU.dmg"
  name 'Konica Minolta Bizhub C3350/C3850 PostScript Printer Driver'
  homepage 'https://www.konicaminolta.eu/en/business-solutions/support/download-center.html'

  depends_on macos: '>= :mavericks'

  pkg 'bizhub_C3850_109.pkg'

  uninstall pkgutil: 'jp.konicaminolta.printer.package.C3850'
end
