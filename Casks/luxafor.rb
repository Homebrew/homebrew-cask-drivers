cask 'luxafor' do
  version '1.2.28'
  sha256 'a56c05f415b076e4eebca9f12769bc28dd2a15287fdb95409906e2ca3981e87b'

  url "https://luxafor.com/uploads/luxafor_mac_v#{version}.zip"
  name 'Luxafor'
  homepage 'https://luxafor.com/'

  app "Luxafor-#{version}/Luxafor.app"
end
