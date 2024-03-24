cask "voicevox" do
  version "0.18.0"
  sha256 "a68fe18e09ad6bb291dd0394b33191914973a958ef71ba1559246d1a0eac46ba"

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
