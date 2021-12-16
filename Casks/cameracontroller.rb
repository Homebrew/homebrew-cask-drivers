cask "cameracontroller" do
  version "1.3.1"
  sha256 "f17e1327ed48db62c9532cdc4e42aba68a539d81d2f7fc44daeea140c3f402d3"

  url "https://github.com/Itaybre/CameraController/releases/download/#{version}/CameraController.zip"
  name "CameraController"
  desc "Control USB Cameras from an app"
  homepage "https://github.com/Itaybre/CameraController"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "CameraController.app"

  zap trash: [
    "~/Library/Application Scripts/com.itaysoft.CameraController",
    "~/Library/Application Scripts/com.itaysoft.CameraController.Helper",
    "~/Library/Application Support/CameraController",
    "~/Library/Containers/CameraController",
    "~/Library/Preferences/com.itaysoft.CameraController.plist",
  ]
end
