cask 'konica-minolta-bizhub-c759-c658-c368-c287-c3851-driver' do
  version '11.1.1,3381071352104e842f8efcdc14230488,1616,1558521685'
  sha256 '1cfc8442928a08235d1a2a457192a4fb174490a656d1acea0c483b443fddb596'

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=#{version.after_comma.before_comma}&tx_kmanacondaimport_downloadproxy[documentId]=#{version.after_comma.after_comma.before_comma}&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=#{version.after_comma.after_comma.after_comma}"
  name 'KONICA MINOLTA bizhub C759/C658/C368/C287/C3851 Series Printer'
  homepage 'https://www.konicaminolta.eu/en/business-solutions/support/download-center.html'

  depends_on macos: '>= :mavericks'

  pkg 'Letter/C759_C658_C368_C287_C3851_109.pkg'

  uninstall pkgutil: 'jp.konicaminolta.print.package.C759'
end
