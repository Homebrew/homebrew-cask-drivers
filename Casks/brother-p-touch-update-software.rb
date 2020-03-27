cask 'brother-p-touch-update-software' do
  version '1.5.2,15:dlfp100785'
  sha256 '7fac02d4d58c43ea029371bff75474536bb25a03687ff42ee7dc74cbb09591c8'

  url "https://download.brother.com/welcome/#{version.after_colon}/pum#{version.before_comma.no_dots}x#{version.after_comma.before_colon}all.dmg"
  name 'Brother P-touch Update Software'
  homepage 'https://support.brother.com/'

  pkg 'BrotherPtUpdateSoftware.pkg'

  uninstall pkgutil: [
                       'com.brother.brotherptdriver.BrotherPtUpdateSoftware',
                       'com.Brother.Brotherdriver.BrotherPtUpdateSoftware',
                     ]
end
