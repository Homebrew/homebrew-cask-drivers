cask 'fujifilm-x-acquire' do
  version '1.16.0,r3z1pz9e'
  sha256 '0ad0fdf27271ec4ba47f06eea00ad6dc970cf1ebbe245353c258e61475e5ac53'

  url "https://dl.fujifilm-x.com/support/software/x-acquire-mac#{version.before_comma.no_dots}-#{version.after_comma}/XAcquireIns#{version.before_comma.no_dots}.dmg"
  appcast 'https://fujifilm-x.com/global/support/download/software/x-acquire/'
  name 'FUJIFILM X Acquire'
  homepage 'https://fujifilm-x.com/global/support/download/software/x-acquire/'

  depends_on macos: '>= :sierra'

  app 'FUJIFILM X Acquire.app'
end
