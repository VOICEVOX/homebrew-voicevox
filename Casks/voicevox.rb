cask "voicevox" do
  version "0.18.1"
  sha256 "9c08f8986932c6b95274ec72f00a3d9704c41ad3755f3b5eea82794e6a0276a3"

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/VOICEVOX.#{version}.dmg",
      verified: "github.com/VOICEVOX/voicevox/"
  name "VOICEVOX"
  desc "Free, medium-quality text-to-speech software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "voicevox-dev",
    "voicevox-preview",
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
