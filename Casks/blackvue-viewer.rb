cask "blackvue-viewer" do
  version "3.03"
  sha256 :no_check

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331"
  appcast "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"
  name "BlackVue Viewer"
  homepage "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"

  depends_on macos: ">= :yosemite"

  app "BlackVue Viewer.app"
end
