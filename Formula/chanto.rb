class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dee25a5c20c98dc7f50a05c687db263cb2800d79547fa57e3eb4746ea2b7b355"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bde41d5dca89c5cc20e74252216f7dc99bad78ba9196c8617d35280c084fd539"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1fa512ceaa430160856528bca24e462b1ac7023d7afb57b60a724956c77630c"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cdaacfbfdb9b5f21a2a7a9f6804c7b8db6292b58f8b6c8ae78a6fcc5657f2709"
    end
  end

  def install
    bin.install "chanto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chanto --version")
  end
end
