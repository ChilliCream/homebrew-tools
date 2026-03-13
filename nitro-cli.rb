class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.41/nitro-osx-arm64.zip"
      sha256 "5c4f7304468c5ce40e8ed1871b3184fed6fb4826edc962f809ee9a14d5797dc1"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.41/nitro-osx-x64.zip"
      sha256 "d4f6bf0e6f56e5abf37941ce20f7e1569d3809e6e7498123b4f84c065d10caa7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
