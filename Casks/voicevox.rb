cask "voicevox" do
  version "0.15.2"
  sha256 "54704a8eaf9887209721c2dec758cd212d84e2aa604d9db928cec26b1aa11cf3"

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
