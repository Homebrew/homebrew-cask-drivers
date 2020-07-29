cask "blackvue-viewer" do
  version "3.01"
  sha256 "5b021d113c5666c0536853f697a6267210b2b2c0309f88edc3bbd548ce08be8e"

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331"
  appcast "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"
  name "BlackVue Viewer"
  homepage "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"

  depends_on macos: ">= :yosemite"

  app "BlackVue Viewer.app"
end
