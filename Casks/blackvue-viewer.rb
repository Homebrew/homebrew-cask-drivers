cask 'blackvue-viewer' do
  version '3.00'
  sha256 'd0a45307b6726c6ff5809d72d8b707ed838a86004d856ec6d36c4f1cb0a740a4'

  url 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331'
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
