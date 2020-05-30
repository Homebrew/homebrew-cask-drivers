cask 'brother-p-touch-update-software' do
  version '1.5.5,15:dlfp100785'
  sha256 'c6e1afdb1daf04c143532f9dab019a764a2f6e07567c1b42d61d34232b990c32'

  url "https://download.brother.com/welcome/#{version.after_colon}/pum#{version.before_comma.no_dots}x#{version.after_comma.before_colon}all.dmg"
  name 'Brother P-touch Update Software'
  homepage 'https://support.brother.com/'

  pkg 'BrotherPtUpdateSoftware.pkg'

  uninstall pkgutil: [
                       'com.brother.brotherptdriver.BrotherPtUpdateSoftware',
                       'com.Brother.Brotherdriver.BrotherPtUpdateSoftware',
                     ]
end
