class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1b5d2bb7b121b883ad01b6b0aa670369827a53002e194e4c45e75a8378f080a8"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "db4de00ea9c897bc571c8c49203f564dbb5094b8afa1bb17dc7f2e84952f76fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cdb8f54cfdbce1ec57e1a3dc062b6ed6c4affc60241c2683a1ed6ccb254b9d4e"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a9b02b06cf8d08b459643b8f86666ac7899ddfa782946386ae7f22e70d60cca"
    end
  end

  def install
    bin.install "chanto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chanto --version")
  end
end
