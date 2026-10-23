class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a1c6c2f639a4bf8be4faf5df265bf077d17ccce5ad94dd089bc2b2521859ee6a"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3b0d41fed95d2702d1290f22b938072fab8021942fd9a050a6cf7022ae87ada5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80dd3dcd83ab4708d3010becb71dd702740ec550889979e4f9fe6111fe06f906"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dc078263b2d8e944941840f8b447a028cf3c3224de6e94a5f1335a886a1eba3"
    end
  end

  def install
    bin.install "chanto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chanto --version")
  end
end
