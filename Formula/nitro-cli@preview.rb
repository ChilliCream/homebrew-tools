class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.4-p.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.6/nitro-osx-arm64.zip"
      sha256 "6cb2089d6ef94d2cd373560193cda8fa25d8b8c90ac54813cc6cf7557cb6e33f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.6/nitro-osx-x64.zip"
      sha256 "15ccafb04e437a05949661e7fc65fc636fa7f6e73b75bd54d7b454a35ec89317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.6/nitro-linux-arm64.tar.gz"
      sha256 "3589f87ebd30f8942ee131f913f1e95c59e2c028b2ac2d11fa65cfb6b08f8b43"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.6/nitro-linux-x64.tar.gz"
      sha256 "f70b0fe6fd33e712f9f487aa293f6911775e0ce8bab412e6dc84f83864c9eac0"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
