cask "voicevox" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "3e489e2b6a96c3cbb3c24ac598ad0326740a6d985775d3b90afb8ddbf7b39d28",
         intel: "7f54da7f5728ed4ff44b216be1a95a2c90daf2b90d043edbc113307187f0ea40"

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/VOICEVOX.#{version}-#{arch}.dmg",
      verified: "github.com/VOICEVOX/voicevox/"
  name "VOICEVOX"
  desc "Free, medium-quality text-to-speech and singing synthesizer software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "voicevox@dev",
    "voicevox@preview",
  ]

  app "VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox",
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Application Support/voicevox-engine",
    "~/Library/Logs/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
