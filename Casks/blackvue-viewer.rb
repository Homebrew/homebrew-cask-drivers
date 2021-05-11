cask "blackvue-viewer" do
  version "3.05"
  sha256 :no_check

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331"
  name "BlackVue Viewer"
  desc "BlackVue Dashcam SD Card and Cloud Viewer"
  homepage "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"

  livecheck do
    url :url
    strategy :header_match
    regex(/blackvue-cloud-viewer-(\d+(?:\.\d+)*)-mac\.zip/i)
  end

  depends_on macos: ">= :yosemite"

  app "BlackVue Viewer.app"
end
