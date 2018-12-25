cask 'netgear-switch-discovery-tool' do
  version '1.2.102'
  sha256 '5d58479d3b32798fedefce7a4b6da220ced1bd20ed5d71ce1d3c04e097721da2'

  url "https://www.downloads.netgear.com/files/GDC/NSDT/NetgearSDT-V#{version}-Mac.zip"
  name 'NETGEAR Switch Discovery Tool'
  homepage 'https://www.netgear.com/support/download/'

  container nested: "NetgearSDT-V#{version}-Mac/NetgearSDT-V#{version}.dmg"

  app 'NETGEAR Switch Discovery Tool.app'
end
