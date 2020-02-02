cask 'hp-connectivity-kit' do
  version '20200116'
  sha256 'af5f9835cd1d559afb8fd33cd59a48f1c8f1819f2b32a137582d29b85d4f4c42'

  url "https://ftp.hp.com/pub/calculators/Prime/HP_Prime_Connectivity_Kit_#{version}.dmg"
  name 'HP Connectivity Kit'
  homepage 'https://www8.hp.com/us/en/campaigns/prime-graphing-calculator/overview.html'

  app 'HP Connectivity Kit.app'
end
