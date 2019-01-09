cask 'datacolor-spyder-elite' do
  version '5.3'
  sha256 'aac0c688f34380737af11da28b9c48164b15800606353cf80090ecd54d2d0ba3'

  # d3d9ci7ypuovlo.cloudfront.net/spyder was verified as official when first introduced to the cask
  url "https://d3d9ci7ypuovlo.cloudfront.net/spyder#{version.major}/Spyder#{version.major}Elite_#{version}_OSX_Installer.zip"
  name 'Spyder Elite'
  homepage "http://www.datacolor.com/photography-design/product-overview/spyder#{version.major}-family/#spyder#{version.major}elite"

  auto_updates true

  installer manual: "Spyder#{version.major}Elite_#{version}_OSX_Installer.app"

  uninstall delete: "/Applications/Datacolor/Spyder#{version.major}Elite",
            signal: ['TERM', "com.datacolor.spyder#{version.major}utility"],
            rmdir:  '/Applications/Datacolor'
end
