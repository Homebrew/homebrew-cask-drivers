cask 'elgato-game-capture-hd' do
  if MacOS.version <= :yosemite
    version '2.0.5_983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'

    url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  else
    version '2.9.2,1327'
    sha256 '9bcf01399719755034c964549a6a3af38932e7eaf03febc8b3742306505ca8a9'

    url "https://edge.elgato.com/egc/macos/egcm/#{version.before_comma}/final/Game%20Capture%20HD%20#{version.before_comma}%20(#{version.after_comma}).dmg"
    appcast 'https://rink.hockeyapp.net/api/2/apps/94f44a87e1fe71d4dfcb119ecd582c91'
  end

  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/game-capture-software'

  app 'Game Capture HD.app'
end
