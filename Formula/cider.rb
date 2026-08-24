class Cider < Formula
  desc "Docker Engine API daemon on top of Apple container"
  homepage "https://github.com/ChilliCream/cider"
  url "https://github.com/ChilliCream/cider/releases/download/0.1.4/cider-osx-arm64.zip"
  sha256 "8fe8e4040bfef4467b2966590a9a3830d71d1fc3d067a02705a97f6ff2c85061"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on "docker"
  depends_on "docker-compose"
  depends_on macos: :tahoe

  conflicts_with "cider-preview", because: "both install the cider binary"

  def install
    bin.install "cider"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cider version")
  end
end
