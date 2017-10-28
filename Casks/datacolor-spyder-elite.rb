cask 'datacolor-spyder-elite' do
  version '5.2'
  sha256 '12290c3ab2e7585d97430da6d6ed1fe3d39f0032c8f3401fdaedb7d567c17197'

  # d3d9ci7ypuovlo.cloudfront.net/spyder was verified as official when first introduced to the cask
  url "http://d3d9ci7ypuovlo.cloudfront.net/spyder#{version.major}/Spyder#{version.major}Elite_#{version}_OSX_Installer.zip"
  name 'Spyder Elite'
  homepage "http://www.datacolor.com/photography-design/product-overview/spyder#{version.major}-family/#spyder#{version.major}elite"

  auto_updates true
  depends_on macos: '>= :lion'

  installer manual: "Spyder#{version.major}Elite_#{version}_OSX_Installer.app"

  uninstall delete: "/Applications/Datacolor/Spyder#{version.major}Elite",
            signal: ['TERM', "com.datacolor.spyder#{version.major}utility"],
            rmdir:  '/Applications/Datacolor'
end
