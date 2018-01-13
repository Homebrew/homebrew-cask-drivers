cask 'brother-p-touch-editor' do
  version '5.1.109'
  sha256 'a1ecebc4688e5d44e5ca761501387f77c092ae96ed4dbc6fe5c6ce242fdf76af'

  url "https://download.brother.com/pub/com/ptouch-su/editor/pem#{version.no_dots}x12us.dmg"
  name 'Brother P-Touch Editor'
  homepage 'http://www.brother.com/product/dev/label/editor/index.htm'

  pkg "BrotherPtEdit#{version.major}.pkg"

  postflight do
    File.unlink(File.expand_path('~/Desktop/P-touch Editor.app'))
  end

  uninstall pkgutil: [
                       "com.brother.P-touchEditor#{version.major}.pkg",
                       'com.brother.brotherptdriver.BrotherFonts_Common.pkg',
                     ]
end
