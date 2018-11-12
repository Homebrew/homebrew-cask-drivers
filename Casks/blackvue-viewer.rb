cask 'blackvue-viewer' do
  version '1.27,74331'
  sha256 '5742cdc8b9a4e85ad50ec5f0881d0c9bb1c78dd58eeb85e35975e9d146bdcf76'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
