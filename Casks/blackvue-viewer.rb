cask 'blackvue-viewer' do
  version '1.34,74331'
  sha256 '7ac72696720c196d327f32870a8324eafd3474731a2ee1f0478ef66262513bf1'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
