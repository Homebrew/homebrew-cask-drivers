cask 'brother-p-touch-editor' do
  version '5.1.110'
  sha256 '237ef13b68a96d686e99e78214a75ce3aec5bbb7b4073f49c34cd494057c0081'

  url "https://download.brother.com/pub/com/ptouch-su/editor/pem#{version.no_dots}x14us.dmg"
  name 'Brother P-Touch Editor'
  homepage 'http://www.brother.com/product/dev/label/editor/index.htm'

  pkg "BrotherPtEdit#{version.major}.pkg"

  postflight do
    File.unlink("#{ENV['HOME']}/Desktop/P-touch Editor.app")
  end

  uninstall pkgutil: [
                       "com.brother.P-touchEditor#{version.major}.pkg",
                       'com.brother.brotherptdriver.BrotherFonts_Common.pkg',
                     ]
end
