cask 'brother-p-touch-update-software' do
  version '1.5.1,14:dlfp100785'
  sha256 'bda125817c4713757568bb66d3bf741d1d82214fed4099bf9eec4f1f1a1c7226'

  url "https://download.brother.com/welcome/#{version.after_colon}/pum#{version.before_comma.no_dots}ax#{version.after_comma.before_colon}all.dmg
"
  name 'Brother P-touch Update Software'
  homepage 'https://support.brother.com/g/b/downloadhowto.aspx?c=us&lang=en&prod=lpql720nweus&os=10017&dlid=dlfp100352_000&flang=178&type3=10183'

  pkg 'BrotherPtUpdateSoftware.pkg'

  uninstall pkgutil: [
                       'com.brother.brotherptdriver.BrotherPtUpdateSoftware',
                       'com.Brother.Brotherdriver.BrotherPtUpdateSoftware',
                     ]
end
