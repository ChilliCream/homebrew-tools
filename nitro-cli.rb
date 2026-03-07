class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.32/nitro-osx-arm64.zip"
      sha256 "4c7cca32ee78557da297b308b3f654d7932d4341a381d4843e5aaa8f86ca01e1"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.32/nitro-osx-x64.zip"
      sha256 "b727b6a6aae44d3ceb30ea7ab613a7dd37a778a5aae93bc885339ed8621ad80f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
