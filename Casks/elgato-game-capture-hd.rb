cask "elgato-game-capture-hd" do
  if MacOS.version <= :yosemite
    version "2.0.5,983"
    sha256 "4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a"
  elsif MacOS.version <= :el_capitan
    version "2.9.2,1327"
    sha256 "9bcf01399719755034c964549a6a3af38932e7eaf03febc8b3742306505ca8a9"
  else
    version "2.11.11,3840"
    sha256 "e844ffc5fbf29c0f7425c568800af7228eb4f939bfa151015fb52d5dd01552f0"
  end

  url "https://gc-updates.elgato.com/mac/download.php?build=#{version.after_comma}"
  appcast "https://help.elgato.com/hc/en-us/articles/360027963512-Elgato-Game-Capture-HD-Software-Release-Notes-macOS"
  name "Game Capture HD"
  homepage "https://www.elgato.com/en/gaming/downloads/"

  app "Game Capture HD.app"
end
