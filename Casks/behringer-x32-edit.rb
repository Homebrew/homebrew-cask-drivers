cask "behringer-x32-edit" do
  # NOTE: "32" is not a version number, but an intrinsic part of the product name
  version "4.2"
  sha256 "69297f08ff205016f4490f891a6f50b623d2a50752019459d7d91a4f809c1520"

  url "https://mediadl.musictribe.com/download/software/behringer/X32/X32-Edit_MAC_#{version}.zip",
      verified: "mediadl.musictribe.com/download/software/behringer/"
  name "Behringer X32-Edit"
  desc "Edit Behringer Digital Mixers via LAN/Wi-Fi"
  homepage "https://www.behringer.com/Categories/Behringer/Mixers/Digital/X32/p/P0ASF/"

  app "X32-Edit_#{version}/X32-Edit.app"

  uninstall quit:   "com.music-group.X32-Edit",
            delete: "/Library/Logs/DiagnosticReports/X32-Edit_*.wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/CrashReporter/X32-Edit_*.plist",
    "~/Library/Saved Application State/com.music-group.X32-Edit.savedState",
    "~/Library/.X32-Edit",
  ]
end
