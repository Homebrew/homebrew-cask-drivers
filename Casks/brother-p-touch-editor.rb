cask 'brother-p-touch-editor' do
  version '5.2.7'
  sha256 '6d14b1ee9b041eae0b07242780af7eb3b5b638fbeff0311053e624310a372afb'

  # download.brother.com was verified as official when first introduced to the cask
  url "https://download.brother.com/welcome/dlfp100701/pem#{version.no_dots}x14all.dmg"
  name 'Brother P-Touch Editor'
  homepage 'https://www.brother.co.jp/eng/dev/print/other_editor/'

  depends_on macos: '>= :sierra'

  pkg "BrotherPtEdit#{version.major}.pkg"

  uninstall pkgutil: "com.Brother.Brotherdriver.BrotherPtEdit#{version.major}"
end
