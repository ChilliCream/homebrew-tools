class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.53/nitro-osx-arm64.zip"
      sha256 "9b65a6e78bec2fadf591e8b11d6dbaa6a62348570ace12e9a7fd6ce740dce78b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.53/nitro-osx-x64.zip"
      sha256 "1b88ba69f6f07b8514ef6f11b61920a7096ff98ac231d79c2fd9fed4a72c7686"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
