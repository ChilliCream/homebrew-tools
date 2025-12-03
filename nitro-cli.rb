class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.5/nitro-osx-arm64.zip"
      sha256 "7ac7406c5631548ae7c5db56957fe21bd5d9d55358e1e90b2afca3ff8fdf2345"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.5/nitro-osx-x64.zip"
      sha256 "435b52a1755581f19fe5f02ead785129225038a3a30010dccd071f93d8f8bc02"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
