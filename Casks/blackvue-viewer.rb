cask 'blackvue-viewer' do
  version '1.30,74331'
  sha256 'b9b088a0aa5af11dfc03ae98fe37dd37bb7f1a8e0d7cd264bd13e641483c7e7f'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
