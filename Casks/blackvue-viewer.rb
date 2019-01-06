cask 'blackvue-viewer' do
  version '1.29,74331'
  sha256 'a6b44eab2b7678a2645822671030ee90890936e4b371c0e2643e8fe962352d07'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
