cask 'blackvue-viewer' do
  version '1.20,74331'
  sha256 '82784dcb6c006998a06acb94bd4eab8030958a70f3fbff290793c7722d65a58b'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  depends_on macos: '>= :yosemite'

  app 'BlackVue Viewer.app'
end
