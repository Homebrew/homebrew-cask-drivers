cask 'elgato-game-capture-hd' do
  if MacOS.version <= ':yosemite'
    version '2.0.5_983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'

    url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  else
    version '2.9.1,1325'
    sha256 'bece6a7a510504b13df4fa8c977185e6f99cb27aa2cb7e8b94d4c0743b76affd'

    url "https://edge.elgato.com/egc/macos/egcm/#{version.before_comma}/final/Game%20Capture%20HD%20#{version.before_comma}%20(#{version.after_comma}).dmg"
  end

  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/game-capture-software'

  app 'Game Capture HD.app'
end
