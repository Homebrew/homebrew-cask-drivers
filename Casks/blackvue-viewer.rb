cask 'blackvue-viewer' do
  version '1.35,74331'
  sha256 '64b069f7d4ad2e3c70d5f721b4ddfd5f7902b458f352786c82f751056ac370a6'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
