cask 'blackvue-viewer' do
  version '1.37'
  sha256 '4cc2aa62f0eed7bd8f292f6466f175c3941d5f0fcd7b04caf6dae9f1769d52fb'

  url 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331'
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
