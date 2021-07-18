cask "netgear-switch-discovery-tool" do
  version "1.2.103"
  sha256 "950165708c05875c661f9f0114e344fc937666f33b2c021d5fbaa1631c55eebe"

  url "https://www.downloads.netgear.com/files/GDC/NSDT/NETGEAR_Switch_Discovery_Tool_macOS-V#{version}.zip"
  appcast "https://www.netgear.com/support/product/netgear-switch-discovery-tool.aspx#download"
  name "NETGEAR Switch Discovery Tool"
  desc "Software for discovering NETGEAR network switches"
  homepage "https://www.netgear.com/support/download/"

  container nested: "NETGEAR_Switch_Discovery_Tool_macOS-V#{version}/NETGEAR Switch Discovery Tool-#{version}.dmg"

  app "NETGEAR Switch Discovery Tool.app"
end
