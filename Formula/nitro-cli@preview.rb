class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.34/nitro-osx-arm64.zip"
      sha256 "901a34a9a345306bb6b8a92363b5f71a52f0a77d76cd2b79451096daf1159554"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.34/nitro-osx-x64.zip"
      sha256 "eaff64b69481ced6b6df6f1a13c2671d5d6e88fd9af67c2fb8ea7d8c495e72b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.34/nitro-linux-arm64.tar.gz"
      sha256 "1625b4affc73cfc7be33db55479fde2004e1f7dbe7620760144666824fc3e470"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.34/nitro-linux-x64.tar.gz"
      sha256 "9e02e880268fe0ebad8f6d453eb74a31629bdd378cb6d0539e599d7a8d6a28f5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
