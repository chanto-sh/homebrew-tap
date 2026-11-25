class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.28"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f792126a93239560799cebbffabcb4f6f150b1dc34d3ad7d7a54cb1974e2ca07"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ad019fc5cedddcae38ec8f1dbb3ebe035c7f5ba17e4b9c5dbf39994308f04a45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8bdd772b4cbcc6d7c63d2095e625cd2368b085d4df66eeed6702871ffeeb462e"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33588ae176fe252128f3759a35fbd6c4e0eb8f1fe510ac5a554b59852606673d"
    end
  end

  def install
    bin.install "chanto"
    doc.install "LICENSE", "NOTICE", "THIRD_PARTY_LICENSES.txt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chanto --version")
  end
end
