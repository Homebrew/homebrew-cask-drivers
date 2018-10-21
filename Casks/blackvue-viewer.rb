cask 'blackvue-viewer' do
  version '1.26,74331'
  sha256 '54d9ea9e99b1367bd44b362c18e31ef4065ddab8a737bbd3ca7cec4a6b9ae88b'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
