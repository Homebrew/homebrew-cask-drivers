cask 'x32-edit' do
  version '3.2'
  sha256 '2dee264d0df054e4f9b689af99046b7b28f5b8519cf1fba8df103ca30edcdc0a'

  # Taken from http://www.music-group.com/brand/c/Behringer/downloads?active=Downloads
  url "https://downloads.music-group.com/software/behringer/X32/X32-Edit_MAC_#{version}.zip"
  name 'X32-Edit'
  homepage 'http://www.music-group.com/Categories/Behringer/Mixers/Digital-Mixers/X32/p/P0ASF'

  app 'X32-Edit.app'
end
