cask 'luxafor' do
  version '1.2.19'
  sha256 'f9c3dc5cd5589738ea3b6d275eb407e1943df1f22d89b53b15d7557931ab1a49'

  url "https://luxafor.com/uploads/luxafor_mac_v#{version}.zip"
  name 'Luxafor'
  homepage 'https://luxafor.com/'

  app "Luxafor-#{version}/Luxafor.app"
end
