cask 'brother-p-touch-update-software' do
  version '1.5.0'
  sha256 '37ddaf7bec64b1d51608aff15d8bc6b72cf9bcfc205cb7f90e55cba8a2b5ac0f'

  url "https://download.brother.com/welcome/dlfp100565/pum#{version.no_dots}x13all.dmg"
  name 'Brother P-touch Update Software'
  homepage 'http://support.brother.com/g/b/downloadhowto.aspx?c=us&lang=en&prod=lpql720nweus&os=10017&dlid=dlfp100352_000&flang=178&type3=10183'

  pkg 'BrotherPtUpdateSoftware.pkg'

  uninstall pkgutil: [
                       'com.brother.brotherptdriver.BrotherPtUpdateSoftware',
                       'com.Brother.Brotherdriver.BrotherPtUpdateSoftware',
                     ]
end
