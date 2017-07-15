cask 'saleae-logic' do
  version '1.2.14'
  sha256 '42c7d5dc6f8193535ae578b634a1941c769eab29cf641e127459032a6a53ceb7'

  url "http://downloads.saleae.com/logic/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Saleae Logic'
  homepage 'https://www.saleae.com/'

  app 'Logic.app'

  zap delete: [
                '~/Library/Saved Application State/com.saleae.Logic.savedState',
              ]
end
