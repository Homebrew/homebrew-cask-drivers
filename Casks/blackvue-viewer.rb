cask 'blackvue-viewer' do
  version '1.22'
  sha256 '8122159060497cf1f4f6639fbcf9696cb4acceab7018fa1afa53259a2898c98b'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
