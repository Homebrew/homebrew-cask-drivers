cask 'saleae-logic' do
  version '1.2.18'
  sha256 '5f495e667366dd030c367c6a8ddaeb20c38d199fb34642f03d936fa6cb179a0c'

  url "https://downloads.saleae.com/logic/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Saleae Logic'
  homepage 'https://www.saleae.com/'

  app 'Logic.app'

  zap trash: [
               '~/Library/Preferences/Saleae',
               '~/Library/Saved Application State/com.saleae.Logic.savedState',
             ]
end
