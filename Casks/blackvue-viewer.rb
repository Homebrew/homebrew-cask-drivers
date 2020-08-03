cask "blackvue-viewer" do
  version "3.02"
  sha256 "65f7fcc5a3ade2ba33cfdb97369a3bcfd8232135d99581507053c0ac67a7b48e"

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331"
  appcast "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"
  name "BlackVue Viewer"
  homepage "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"

  depends_on macos: ">= :yosemite"

  app "BlackVue Viewer.app"
end
