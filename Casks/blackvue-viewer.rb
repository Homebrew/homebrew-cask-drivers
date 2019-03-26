cask 'blackvue-viewer' do
  version '1.32,74331'
  sha256 '4f74a31e058fd55c635424606c698dfa2c91e52575ced58085e17be5e61b094f'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  appcast 'https://www.blackvue.com/download/blackvue-mac-viewer-cloud/'
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
