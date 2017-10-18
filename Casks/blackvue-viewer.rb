cask 'blackvue-viewer' do
  version '1.13,74331'
  sha256 '0eee70b2492d029fc959cb560d44be110f11355b9644f9e1930c2dba0d00326d'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  app 'BlackVue Viewer.app'
end
