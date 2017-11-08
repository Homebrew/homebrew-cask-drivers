cask 'konica-minolta-bizhub-c554-c364-109-driver' do
  version '5.4.0'
  sha256 '5400c5c971baaccf1f5fdb67aef90a516faf07f39a195b00bb1f03126266ec21'

  url 'https://o.cses.konicaminolta.com/file/Default.aspx?fileid=2BECF238-AC0A-43BF-AC57-82E8E252A9BD&filetype=DA.dmg'
  name 'Konica Minolta Bizhub C554/C364 Postscript Printer Driver'
  homepage 'https://www.biz.konicaminolta.com/download/driver.html'

  pkg 'bizhub_C554_C364_109.pkg'

  uninstall pkgutil: 'jp.konicaminolta.print.package.C554'
end
