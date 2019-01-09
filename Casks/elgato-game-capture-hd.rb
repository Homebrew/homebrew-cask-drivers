cask 'elgato-game-capture-hd' do
  if MacOS.version <= :yosemite
    version '2.0.5,983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'
  elsif MacOS.version <= :el_capitan
    version '2.9.2,1327'
    sha256 '9bcf01399719755034c964549a6a3af38932e7eaf03febc8b3742306505ca8a9'
  else
    version '2.10.1,1351'
    sha256 '5b8da60571feed59eb99b0f8efb15c155fc410a65403bd1616c13c65a8075a52'
  end

  url "https://gc-updates.elgato.com/mac/download.php?build=#{version.after_comma}"
  appcast 'https://rink.hockeyapp.net/api/2/apps/94f44a87e1fe71d4dfcb119ecd582c91'
  name 'Game Capture HD'
  homepage 'https://help.elgato.com/customer/en/portal/articles/2643654-elgato-game-capture-hd-software-release-notes-macos'

  app 'Game Capture HD.app'
end
