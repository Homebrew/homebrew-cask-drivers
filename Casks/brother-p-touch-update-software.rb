cask 'brother-p-touch-update-software' do
  version '1.4.7'
  sha256 'e2f098562e23d85bc446e288a73f1b4e45482bb553f6fee0b889b06aee9907ce'

  url "https://download.brother.com/welcome/dlfp100352/pum#{version.no_dots}x12all.dmg"
  name 'Brother P-touch Update Software'
  homepage 'http://support.brother.com/g/b/downloadhowto.aspx?c=us&lang=en&prod=lpql720nweus&os=10017&dlid=dlfp100352_000&flang=178&type3=10183'

  pkg 'BrotherPtUpdateSoftware.pkg'

  uninstall pkgutil: 'com.brother.brotherptdriver.BrotherPtUpdateSoftware'
end
