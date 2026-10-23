class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "043f5f2f233f91213d22fb53e1e398e2f0c5e5f35a9f05f641245ef88f233fa7"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b47360d229dfc1baa23d3315ac8d8caa29ae6658ed041fbff4ddd66e63c5780c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a3db34c0157fa2c1e00e8f8ebc0c561c6d6b105b5902456b073438cb3495e534"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cec947edbc6b223c7f95983e96516656cab52cd54ed44df35bee40d248bdf5a"
    end
  end

  def install
    bin.install "chanto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chanto --version")
  end
end
