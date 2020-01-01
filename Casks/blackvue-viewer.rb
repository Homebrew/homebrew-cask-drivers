cask 'blackvue-viewer' do
  version '1.36'
  sha256 '37834ea96182651f8c68e76e260a102927c84f7ae02ee72ae4d1f104bc71331a'

  url 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331'
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
