cask 'blackvue-viewer' do
  version '1.36'
  sha256 '66fd0f0929fbb3719b59783e445690a9c8ea60ae950aa68e48c249fa6feb1da0'

  url 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331'
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
