cask 'behringer-x32-edit' do
  # note: "32" is not a version number, but an intrinsic part of the product name
  version '3.2'
  sha256 '2dee264d0df054e4f9b689af99046b7b28f5b8519cf1fba8df103ca30edcdc0a'

  url "https://downloads.music-group.com/software/behringer/X32/X32-Edit_MAC_#{version}.zip"
  name 'X32-Edit'
  homepage 'https://www.music-group.com/Categories/Behringer/Mixers/Digital-Mixers/X32/p/P0ASF'

  app 'X32-Edit.app'
end
