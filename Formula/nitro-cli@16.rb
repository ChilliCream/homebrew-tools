class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.1/nitro-osx-arm64.zip"
      sha256 "d2e2a97a822509751e26096716a48dd6cf86be11461283f902c95f9000e61bbf"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.1/nitro-osx-x64.zip"
      sha256 "4a5e8e637cc8cd3cae357b080044b110d6600b0841f4651946165eb3b9444c26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.1/nitro-linux-arm64.tar.gz"
      sha256 "f50ead23b59a3dcce42d026f681ddd25f7e3b9bf6b11cb45c6db480d524e0deb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.1/nitro-linux-x64.tar.gz"
      sha256 "abd7237aacfb9dc8e766d23ffa2a823f51b3e9e3ddf962bb4e828e99f38bbbdf"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
