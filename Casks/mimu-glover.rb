cask "mimu-glover" do
  version "1.1.2"
  sha256 "d4692b1e9d530839ae7a58d67727157f5b4593644d565f74d5c58499c8c7d5ac"

  url "https://static.mimugloves.com/Glover/Glover-MacOS-#{version}.zip"
  name "Glover"
  desc "MiMU Gloves software"
  homepage "https://mimugloves.com/glover/"

  livecheck do
    url "https://mimugloves.com/glover/"
    regex(/Glover-MacOS-(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Glover.app"

  uninstall delete: "/Library/Logs/DiagnosticReports/Glover_*.wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/Glover",
    "~/Library/Application Support/CrashReporter/Glover_*.plist",
    "~/Library/Caches/com.mimu.Glover",
    "~/Library/Caches/com.mimugloves.Glover",
    "~/Library/Caches/Glover",
    "~/Library/Preferences/com.mimugloves.Glover.plist",
    "~/Library/Saved Application State/com.mimugloves.Glover.savedState",
  ]
end
