cask 'elgato-game-capture-hd' do
  if MacOS.version <= :yosemite
    version '2.0.5,983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'
  elsif MacOS.version <= :el_capitan
    version '2.9.2,1327'
    sha256 '9bcf01399719755034c964549a6a3af38932e7eaf03febc8b3742306505ca8a9'
  else
    version '2.11.9,3815'
    sha256 '31b4e7bd9cdc71a3dd21a4a6979cb14b48110784863671f636e2fdf0f8e080d6'
  end

  url "https://gc-updates.elgato.com/mac/download.php?build=#{version.after_comma}"
  appcast 'https://help.elgato.com/hc/en-us/articles/360027963512-Elgato-Game-Capture-HD-Software-Release-Notes-macOS'
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/downloads/'

  app 'Game Capture HD.app'
end
