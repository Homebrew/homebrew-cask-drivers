cask 'elgato-game-capture-hd' do
  if MacOS.version <= :yosemite
    version '2.0.5,983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'
  elsif MacOS.version <= :el_capitan
    version '2.9.2,1327'
    sha256 '9bcf01399719755034c964549a6a3af38932e7eaf03febc8b3742306505ca8a9'
  else
    version '2.11.3,1422'
    sha256 'd4d5c20269823b7e643260191a11cdf69394cdb4812251f6e3f9cd52fb4da5ff'
  end

  url "https://gc-updates.elgato.com/mac/download.php?build=#{version.after_comma}"
  appcast 'https://gc-updates.elgato.com/mac/egcm-update-rss/?dbg=0&lang=English'
  name 'Game Capture HD'
  homepage 'https://help.elgato.com/customer/en/portal/articles/2643654-elgato-game-capture-hd-software-release-notes-macos'

  app 'Game Capture HD.app'
end
