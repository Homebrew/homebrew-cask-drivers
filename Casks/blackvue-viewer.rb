cask "blackvue-viewer" do
  version "3.03"
  sha256 "45ab3bb4bf3479a9c56fa5e887ca823935bfcc68a8d17f2c45e41ff046c25262"

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331"
  appcast "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"
  name "BlackVue Viewer"
  homepage "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"

  depends_on macos: ">= :yosemite"

  app "BlackVue Viewer.app"
end
