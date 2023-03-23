cask "blackvue-viewer" do
  version "3.14"
  sha256 :no_check

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=74331"
  name "BlackVue Viewer"
  desc "BlackVue Dashcam SD Card and Cloud Viewer"
  homepage "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/"

  livecheck do
    url :url
    regex(/blackvue[._-]cloud[._-]viewer[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "BlackVue Viewer.app"
end
