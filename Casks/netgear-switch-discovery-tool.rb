cask 'netgear-switch-discovery-tool' do
  version '1.2.101'
  sha256 'f0ed6cd9eb2f3ec3bf6e27bc4279777640c26143d9e6c635ec7b3d18dcd66042'

  url "https://www.downloads.netgear.com/files/GDC/NSDT/NetgearSDT-V#{version}-Mac.zip"
  name 'NETGEAR Switch Discovery Tool'
  homepage 'https://www.netgear.com/support/download/'

  container nested: "NetgearSDT-V#{version}/NetgearSDT-V#{version}.dmg"

  app 'NETGEAR Switch Discovery Tool.app'
end
