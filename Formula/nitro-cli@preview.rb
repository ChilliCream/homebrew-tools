class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.16/nitro-osx-arm64.zip"
      sha256 "0b891e5c178a8b96f0813413109c38741b2672c3f07ab23b0c1054a0174b93de"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.16/nitro-osx-x64.zip"
      sha256 "ea3f328ddb01caff93e5c3f214e7e72e055113b6b354e0cae4299673ceefc58b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.16/nitro-linux-arm64.tar.gz"
      sha256 "293949e552c785ee69abe8cbec2c9b9e94000e05f0e97f138cf89f9919938eb8"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.16/nitro-linux-x64.tar.gz"
      sha256 "f9b134deed287c6b1bc75a4298bb7c1424d23d1b9b7cb522dd747b0960c8ccb5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
