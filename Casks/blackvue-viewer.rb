cask 'blackvue-viewer' do
  version '1.31,74331'
  sha256 '8abaf2363291940c483b5f9e805a4aead6d864d00acf2c19e5399fad2ce55b25'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
