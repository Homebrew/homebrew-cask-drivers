cask 'blackvue-viewer' do
  version '1.28,74331'
  sha256 '99aeaf10667d354239e306fdaf2fab65ed011cfde1236b613239a31b44159608'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
