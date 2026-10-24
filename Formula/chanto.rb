class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "480c309cfbdd9384a7f7291fa36cc06cbdd30257480dd7faa92ad81c3e85ebee"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c79efb1baa8fbf442f8888ecdcaca370733901ec7ac108ebbab5df5a484ec9ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e48c352555fc24e12e13643781b41b9e5aa1e628c2cc6d9311db168310419eb"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d55ff2670b5afb3a3b5c665bd819458d63cf79a77efcfbfd559fee2d61166145"
    end
  end

  def install
    bin.install "chanto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chanto --version")
  end
end
