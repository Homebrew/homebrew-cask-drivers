cask 'konica-minolta-bizhub-c759-c658-c368-c287-c3851-driver' do
  version '11.1.1'
  sha256 '1cfc8442928a08235d1a2a457192a4fb174490a656d1acea0c483b443fddb596'

  url 'https://o.cses.konicaminolta.com/file/Default.aspx?fileid=63586186-01F8-42A7-B7B1-65EFCDA41C04&filetype=DA'
  name 'KONICA MINOLTA bizhub C759/C658/C368/C287/C3851 Series Printer'
  homepage 'https://www.biz.konicaminolta.com/download/driver.html'

  pkg 'Letter/C759_C658_C368_C287_C3851_109.pkg'

  uninstall pkgutil: 'jp.konicaminolta.print.package.C759'
end
