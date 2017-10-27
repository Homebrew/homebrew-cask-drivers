cask 'spyder5elite' do
  version '5.2'
  sha256 '12290c3ab2e7585d97430da6d6ed1fe3d39f0032c8f3401fdaedb7d567c17197'

  # Gotten from - http://support.datacolor.com/index.php?/Knowledgebase/Article/View/1671/153/spyder5elite-52-macos (The URL on that page redirects to this.)
  url "http://d3d9ci7ypuovlo.cloudfront.net/spyder5/Spyder5Elite_#{version}_OSX_Installer.zip"
  name 'Spyder5 Elite'
  homepage 'http://www.datacolor.com/photography-design/product-overview/spyder5-family/#spyder5elite'

  auto_updates true
  depends_on macos: '>= :lion'

  installer manual: "Spyder5Elite_#{version}_OSX_Installer.app"

  uninstall trash: '/Applications/Datacolor/'

end

