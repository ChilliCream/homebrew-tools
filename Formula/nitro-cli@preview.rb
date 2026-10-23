class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.39/nitro-osx-arm64.zip"
      sha256 "8a4364cdca796de01dd7057cec40af2e2ece725df12a81aaf34fb2c17bf69e25"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.39/nitro-osx-x64.zip"
      sha256 "8209caeb94a61cde4b3f9c23d264c0417e08ee62053c3cfdaecb1edbc52a13cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.39/nitro-linux-arm64.tar.gz"
      sha256 "c2664e5b6f75994ac52814399ccae6eedcd6c88ea1b14823352778f3dfe4e7e2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.39/nitro-linux-x64.tar.gz"
      sha256 "e82e69a778db8e42ed5ced50bb4062b6fbca25676c019c2d93ebcb4a97510c7d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
